class ParkingsController < ApplicationController
   before_filter :require_login
  def index
      if params[:registro] == nil or params[:registro] <= '0' then 
        params[:registro] = 2 
    end
    
    @parkings = Parking.search(params[:buscar]).page(params[:page]).per_page(params[:registro].to_i)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @parkings }
    end
  end

  def show
      @parking = Parking.find(params[:id])
  end

  def new
      @parking = Parking.new
  end

  def edit
      @parking = Parking.find(params[:id])
  end

  def create
      @parking = Parking.new(params[:parking])
      render :action => :new unless @parking.save
      
  end

  def update
      @parking = Parking.find(params[:id])
      render :action => :edit unless @parking.update_attributes(params[:parking])
  end

  def destroy
      @parking = Parking.find(params[:id])
      @parking.destroy
     
  end  
end
