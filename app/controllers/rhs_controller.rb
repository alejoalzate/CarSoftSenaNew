class RhsController < ApplicationController
  def index
    @rhs = Rh.all

    respond_to do |format|
      format.html 
      format.json { render json: @rhs }
    end
  end
  def show
      @rh = Rh.find(params[:id])
  end

  def new
      @rh = Rh.new
  end

  def edit
     @rh = Rh.find(params[:id])
  end

  def create
      @rh = Rh.new(params[:rh])
      render :action => :new unless @rh.save
      
  end

  def update
      @rh = Rh.find(params[:id])
      render :action => :edit unless @rh.update_attributes(params[:rh])
  end

  def destroy
      @rh = Rh.find(params[:id])
      @rh.destroy
     
  end  
end