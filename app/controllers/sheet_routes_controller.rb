class SheetRoutesController < ApplicationController
 
  before_filter :authenticate_user!
  before_action :set_sheet_route, only: [:show, :edit, :update, :destroy,:do_process]


  # GET /sheet_routes
  # GET /sheet_routes.json
  def index
    @sheet_routes = SheetRoute.all
  end

  # GET /sheet_routes/1
  # GET /sheet_routes/1.json
  def show

     @sheet_route_details = @sheet_route.sheet_route_details
   
  end

  # GET /sheet_routes/new
  def new
    @sheet_route = SheetRoute.new
    @company = Company.find(1)
    @trucks = @company.get_trucks()
    @employees = @company.get_employees()
  end

  # GET /sheet_routes/1/edit
  def edit
  end

  # POST /sheet_routes
  # POST /sheet_routes.json
  def create
    @sheet_route = SheetRoute.new(sheet_route_params)

    @sheet_route[:code] = @sheet_route.get_maximo("1")
    @sheet_route[:user_id] = current_user.id 

    

    respond_to do |format|
      if @sheet_route.save
        format.html { redirect_to @sheet_route, notice: 'Sheet route was successfully created.' }
        format.json { render :show, status: :created, location: @sheet_route }
      else
        format.html { render :new }
        format.json { render json: @sheet_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sheet_routes/1
  # PATCH/PUT /sheet_routes/1.json
  def update
    respond_to do |format|
      if @sheet_route.update(sheet_route_params)
        format.html { redirect_to @sheet_route, notice: 'Sheet route was successfully updated.' }
        format.json { render :show, status: :ok, location: @sheet_route }
      else
        format.html { render :edit }
        format.json { render json: @sheet_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sheet_routes/1
  # DELETE /sheet_routes/1.json
  def destroy
    @sheet_route.destroy
    respond_to do |format|
      format.html { redirect_to sheet_routes_url, notice: 'Sheet route was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def pdf
    @sheet_route = SheetRoute.find(params[:id])
    @company = Company.find(1)
    
        Prawn::Document.generate "app/pdf_output/ticket2.pdf" , :margin => [10,15,12,5]  do |pdf|   
        
        pdf.font "Helvetica"
        pdf = build_pdf_header(pdf)
        pdf = build_body_pdf(pdf)
        
        $lcFileName =  "app/pdf_output/ticket2.pdf"              
        end 
      
    
    $lcFileName1=File.expand_path('../../../', __FILE__)+ "/"+$lcFileName              
    send_file("app/pdf_output/ticket2.pdf", :type => 'application/pdf', :disposition => 'inline')
    
  end
  

  # Process an invoice
  def do_process
    @sheet_route = SheetRoute.find(params[:id])
    @sheet_route[:processed] = "1"
   
   
    @sheet_route.process
    flash[:notice] = "The invoice order has been processed."
    redirect_to @sheet_route
    

  end




##ticket
   def build_pdf_header(pdf)
      @lcFecha1= DateTime.now.strftime("%d/%m/%Y  %H:%M").to_s
       pdf.font "Helvetica" , :size => 8

    
    image_path = "#{Dir.pwd}/public/images/LOGOHIDRO2.jpg"

      table_content = ([ [{:image => image_path, :rowspan => 3 }, 
       {:content =>"SISTEMA DE GESTION INTEGRADO",:rowspan => 2, :valign => :center },"CODIGO ","NN"], 
         ["VERSION: ","4"], 
         ["HOJA DE RUTA ","PAGINA : ","1 de 1 "] 
        
         ])
    
      pdf.table(table_content  ,{
          :position => :center,
          :width => pdf.bounds.width
        })do
          columns([1,2]).font_style = :bold
           columns([0]).width = 118.55
           columns([1]).width = 333.45
           columns([1]).align = :center
           
           columns([2]).width = 70
         
           columns([3]).width = 70
     
        end
       
        table_content2 = ([["FECHA : ",Date.today.strftime("%d/%m/%Y")]])

        pdf.table(table_content2,{:position=>:right }) do

           columns([0, 1]).font_style = :bold
           columns([0, 1]).width = 70
           
        end 

  
        
        pdf.move_down 2
     
     pdf 
    
  end   


  def build_body_pdf(pdf)

     pdf.font "Helvetica" , :size => 6
    
      headers = []
      table_content = []
  pdf.move_down 5


      tb_text_guias = [ [ {:content => "CODE: " + @sheet_route.code , :font_style => :bold ,:size=> 8,:border_width => 0 }  , 
                        
                        {:content => "FECHA : " + @sheet_route.fecha.strftime("%d/%m/%Y"), :font_style => :bold , :border_width => 0 }, 
                         {:content => "VEHICULO: " , :font_style => :bold ,:size=> 8,:border_width => 0 }  , 
                         {:content =>    @sheet_route.truck.placa , :font_style => :bold ,:size=> 8,:text_color=> "141000",:background_color => "FFFFCC"  } ],

                        ]

            pdf.table( tb_text_guias ,:position => :right,
                                            
                                              :width =>  pdf.bounds.width,
                                              :cell_style => {:height => 17}
                                                    ) do

            row(0).font_style = :bold
            columns([0]).align = :left
            columns([1]).align = :right
            columns([2]).width = 135
            columns([2]).align = :right
            end

     pdf.move_down 5


     SheetRoute::TABLE_HEADERS.each do |header|
        cell = pdf.make_cell(:content => header)
        cell.background_color = "FFFFCC"
        headers << cell
      end
      table_content << headers



      nroitem = 1



       for  product in @sheet_route.get_sheet_route_detalle()
      
            row = []          
            row << nroitem 
            row << product.fecha.strftime("%d/%m/%Y")
            row << product.employee.full_name
            row << product.km_in 
            row << product.km_out 
            row << sprintf("%.2f",product.total) 

            row << product.lugar
            row <<  product.comb_km 
            row << product.comb_glns 
            row << product.mant_km 
            row <<  product.observa
           
            table_content << row

            nroitem = nroitem + 1
        end


        result = pdf.table table_content,
                                      { :position => :left,
                                        :header => false,
                                        :width => pdf.bounds.width
                                        } do 
                                          self.cells.borders = [] 
                                          columns([0]).align=:center
                                          
                                          columns([1]).align=:left
                                          
                                          columns([2]).align=:left
                                          columns([2]).width= 100
                                        end                       
                                        
                                        
          
             
                      
                                        
        
          
      pdf.move_down 10                                  
      pdf.text Date.today.strftime("%d/%m/%Y") 
      pdf.text DateTime.now.to_s(:time)

      pdf 

end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sheet_route
      @sheet_route = SheetRoute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sheet_route_params
      params.require(:sheet_route).permit(:code, :fecha, :truck_id, :references, :trucks)
    end
end
