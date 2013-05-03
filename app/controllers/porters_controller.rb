class PortersController < ApplicationController
  def index
    @porters = Porter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @porters }
    end
  end

  def show
      @porter = Porter.find(params[:id])
  end

  def new
      @porter = Porter.new
  end

  def edit
     @porter = Porter.find(params[:id])
  end

  def create
      @porter = Porter.new(params[:porter])
      render :action => :new unless @porter.save
      
  end

  def update
      @porter = Porter.find(params[:id])
      render :action => :edit unless @porter.update_attributes(params[:porter])
  end

  def destroy
      @porter = Porter.find(params[:id])
      @porter.destroy
     
  end  
end