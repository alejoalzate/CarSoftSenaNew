class TypeVehiclesController < ApplicationController
  def index
    @type_vehicles = TypeVehicle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @type_vehicles }
    end
  end
  def show
      @type_vehicle = TypeVehicle.find(params[:id])
  end

  def new
      @type_vehicle = TypeVehicle.new
  end

  def edit
     @type_vehicle = TypeVehicle.find(params[:id])
  end

  def create
      @type_vehicle = TypeVehicle.new(params[:type_vehicle ])
      render :action => :new unless @type_vehicle.save
      
  end

  def update
      @type_vehicle = TypeVehicle.find(params[:id])
      render :action => :edit unless @type_vehicle.update_attributes(params[:type_vehicle ])
  end

  def destroy
      @type_vehicle = TypeVehicle.find(params[:id])
      @type_vehicle.destroy
     
  end  
end