class SheetRoutes::SheetRouteDetailsController < ApplicationController
  

  before_action :set_sheet_route 
  before_action :set_sheet_route_detail, except: [:new,:create ]


  # GET /sheet_route_details
  # GET /sheet_route_details.json
  def index
    @sheet_route_details = SheetRouteDetail.all
  end

  # GET /sheet_route_details/1
  # GET /sheet_route_details/1.json
  def show


  end

  # GET /sheet_route_details/new
  def new
    @sheet_route_detail = SheetRouteDetail.new
    @company = Company.find(1)
    @trucks = @company.get_trucks()
    @employees = @company.get_employees()
    @sheet_route_detail[:km_in] = 0
    @sheet_route_detail[:km_out] = 0

    @sheet_route_detail[:comb_km] = 0
    @sheet_route_detail[:comb_glns] = 0

    @sheet_route_detail[:mant_km] = 0
  end

  # GET /sheet_route_details/1/edit
  def edit
  end

  # POST /sheet_route_details
  # POST /sheet_route_details.json
  def create

     @sheet_route_detail = SheetRouteDetail.new(payroll_detail_params)
     @sheet_route_detail.payroll_id  = @payroll.id 

   
    respond_to do |format|
      if @sheet_route_detail.save
        format.html { redirect_to @sheet_route_detail, notice: 'Sheet route detail was successfully created.' }
        format.json { render :show, status: :created, location: @sheet_route_detail }
      else
        format.html { render :new }
        format.json { render json: @sheet_route_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sheet_route_details/1
  # PATCH/PUT /sheet_route_details/1.json
  def update
    respond_to do |format|
      if @sheet_route_detail.update(sheet_route_detail_params)
        format.html { redirect_to @sheet_route_detail, notice: 'Sheet route detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @sheet_route_detail }
      else
        format.html { render :edit }
        format.json { render json: @sheet_route_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sheet_route_details/1
  # DELETE /sheet_route_details/1.json
  def destroy
    @sheet_route_detail.destroy
    respond_to do |format|
      format.html { redirect_to sheet_route_details_url, notice: 'Sheet route detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private


    def set_sheet_route
      @sheet_route = SheetRoute.find(params[:sheet_route_id])
    end

        # Use callbacks to share common setup or constraints between actions.
    def set_sheet_route_detail
      @sheet_route_detail = SheetRouteDetail.find(params[:id])
    end



    # Never trust parameters from the scary internet, only allow the white list through.
    def sheet_route_detail_params
      params.require(:sheet_route_detail).permit(:fecha, :employee_id, :km_in, :km_out, :total, :lugar, :comb_km, :comb_glns, :mant_km, :observa, :references, :employees)
    end
end
