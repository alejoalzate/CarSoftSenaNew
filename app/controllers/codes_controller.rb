class CodesController < ApplicationController
  def index
    @codes = Code.all

    respond_to do |format|
      format.html
      format.json { render json: @codes }
    end
  end
  def show
      @code = Code.find(params[:id])
  end

  def new
      @code = Code.new
  end

  def edit
      @code = Code.find(params[:id])
  end

  def create
      @code = Code.new(params[:code])
      render :action => :new unless @code.save
  end

  def update
      @code = Code.find(params[:id])
      render :action => :edit unless @code.update_attributes(params[:code])
  end

  def destroy
      @code = Code.find(params[:id])
      @code.destroy
  end
  
end