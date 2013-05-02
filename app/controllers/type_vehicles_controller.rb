class TypeVehiclesController < ApplicationController
  # GET /type_vehicles
  # GET /type_vehicles.json
  def index
    @type_vehicles = TypeVehicle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @type_vehicles }
    end
  end

  # GET /type_vehicles/1
  # GET /type_vehicles/1.json
  def show
    @type_vehicle = TypeVehicle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @type_vehicle }
    end
  end

  # GET /type_vehicles/new
  # GET /type_vehicles/new.json
  def new
    @type_vehicle = TypeVehicle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @type_vehicle }
    end
  end

  # GET /type_vehicles/1/edit
  def edit
    @type_vehicle = TypeVehicle.find(params[:id])
  end

  # POST /type_vehicles
  # POST /type_vehicles.json
  def create
    @type_vehicle = TypeVehicle.new(params[:type_vehicle])

    respond_to do |format|
      if @type_vehicle.save
        format.html { redirect_to @type_vehicle, notice: 'Type vehicle was successfully created.' }
        format.json { render json: @type_vehicle, status: :created, location: @type_vehicle }
      else
        format.html { render action: "new" }
        format.json { render json: @type_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /type_vehicles/1
  # PUT /type_vehicles/1.json
  def update
    @type_vehicle = TypeVehicle.find(params[:id])

    respond_to do |format|
      if @type_vehicle.update_attributes(params[:type_vehicle])
        format.html { redirect_to @type_vehicle, notice: 'Type vehicle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @type_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_vehicles/1
  # DELETE /type_vehicles/1.json
  def destroy
    @type_vehicle = TypeVehicle.find(params[:id])
    @type_vehicle.destroy

    respond_to do |format|
      format.html { redirect_to type_vehicles_url }
      format.json { head :no_content }
    end
  end
end
