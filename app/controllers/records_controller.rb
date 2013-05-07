class RecordsController < ApplicationController
  def index
    @records = Record.all

    respond_to do |format|
      format.html 
      format.json { render json: @records }
    end
  end

  def show
      @record = Record.find(params[:id])
  end

  def new
      @record = Record.new
  end

  def edit
     @record = Record.find(params[:id])
  end

  def create
      @record = Record.new(params[:record])
      render :action => :new unless @record.save
      
  end

  def update
      @record = Record.find(params[:id])
      render :action => :edit unless @record.update_attributes(params[:record])
  end

  def destroy
      @record = Record.find(params[:id])
      @record.destroy
     
  end  
end