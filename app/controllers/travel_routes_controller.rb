class TravelRoutesController < ApplicationController
  before_action :set_travel_route, only: [:show, :edit, :update, :destroy]

  # GET /travel_routes
  # GET /travel_routes.json
  def index
    @travel_routes = TravelRoute.all
  end

  # GET /travel_routes/1
  # GET /travel_routes/1.json
  def show
  end

  # GET /travel_routes/new
  def new
    @travel_route = TravelRoute.new
  end

  # GET /travel_routes/1/edit
  def edit
  end

  # POST /travel_routes
  # POST /travel_routes.json
  def create
    @travel_route = TravelRoute.new(travel_route_params)

    respond_to do |format|
      if @travel_route.save
        format.html { redirect_to @travel_route, notice: 'Travel route was successfully created.' }
        format.json { render :show, status: :created, location: @travel_route }
      else
        format.html { render :new }
        format.json { render json: @travel_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /travel_routes/1
  # PATCH/PUT /travel_routes/1.json
  def update
    respond_to do |format|
      if @travel_route.update(travel_route_params)
        format.html { redirect_to @travel_route, notice: 'Travel route was successfully updated.' }
        format.json { render :show, status: :ok, location: @travel_route }
      else
        format.html { render :edit }
        format.json { render json: @travel_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travel_routes/1
  # DELETE /travel_routes/1.json
  def destroy
    @travel_route.destroy
    respond_to do |format|
      format.html { redirect_to travel_routes_url, notice: 'Travel route was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel_route
      @travel_route = TravelRoute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travel_route_params
      params.require(:travel_route).permit(:depparture, :arrival, :driver_id)
    end
end
