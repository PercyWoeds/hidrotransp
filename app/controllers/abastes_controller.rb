class AbastesController < ApplicationController
  before_action :set_abaste, only: [:show, :edit, :update, :destroy]

  # GET /abastes
  # GET /abastes.json
  def index
    @abastes = Abaste.all
  end

  # GET /abastes/1
  # GET /abastes/1.json
  def show
  end

  # GET /abastes/new
  def new
    @abaste = Abaste.new
    @company = Company.find(1)  

    @customers = @company.get_customers()
    @trucks = @company.get_trucks()
    @employees = @company.get_employees()

  end

  # GET /abastes/1/edit
  def edit
    @company = Company.find(1)  

    @customers = @company.get_customers()
    @trucks = @company.get_trucks()
    @employees = @company.get_employees()

  end

  # POST /abastes
  # POST /abastes.json
  def create
    @abaste = Abaste.new(abaste_params)
    @company = Company.find(1)  

    @customers = @company.get_customers()
    @trucks = @company.get_trucks()
    @employees = @company.get_employees()
    @abaste.user_id = current_user.id 

    respond_to do |format|
      if @abaste.save
        format.html { redirect_to @abaste, notice: 'Abaste was successfully created.' }
        format.json { render :show, status: :created, location: @abaste }
      else
        format.html { render :new }
        format.json { render json: @abaste.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abastes/1
  # PATCH/PUT /abastes/1.json
  def update
    @company = Company.find(1)  
@abaste.user_id = current_user.id 
    @customers = @company.get_customers()
    @trucks = @company.get_trucks()
    @employees = @company.get_employees()


    respond_to do |format|
      if @abaste.update(abaste_params)
        format.html { redirect_to @abaste, notice: 'Abaste was successfully updated.' }
        format.json { render :show, status: :ok, location: @abaste }
      else
        format.html { render :edit }
        format.json { render json: @abaste.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abastes/1
  # DELETE /abastes/1.json
  def destroy

    @abaste.destroy
    respond_to do |format|
      format.html { redirect_to abastes_url, notice: 'Abaste was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abaste
      @abaste = Abaste.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def abaste_params
      params.require(:abaste).permit(:code, :fecha, :customer_id, :truck_id, :employee_id, :km,
       :qty, :horometro, :comments, :user_id)
    end
end
