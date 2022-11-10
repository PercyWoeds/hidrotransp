class SheetRoutesController < ApplicationController
 
  before_filter :authenticate_user!
  before_action :set_sheet_route, only: [:show, :edit, :update, :destroy]


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
