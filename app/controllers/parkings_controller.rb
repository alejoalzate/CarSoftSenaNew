class ParkingsController < ApplicationController
  def index
    @parkings = Parking.all

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