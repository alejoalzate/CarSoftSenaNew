class VehiclesController < ApplicationController
  def index
    if params[:registro] == nil or params[:registro] <= '0' then 
        params[:registro] = 2 
    end
    @vehicles = Vehicle.search(params[:buscar]).page(params[:page]).per_page(params[:registro].to_i)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vehicles }
    end
  end
  def show
      @vehicle= Vehicle.find(params[:id])
  end

  def new
      @vehicle = Vehicle.new
  end

  def edit
     @vehicle = Vehicle.find(params[:id])
  end

  def create
      @vehicle = Vehicle.new(params[:vehicle])
      render :action => :new unless @vehicle.save
      
  end

  def update
      @vehicle = Vehicle.find(params[:id])
      render :action => :edit unless @vehicle.update_attributes(params[:vehicle])
  end

  def destroy
      @vehicle = Vehicle.find(params[:id])
      @vehicle.destroy
     
  end  
end
