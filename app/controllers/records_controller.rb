class RecordsController < ApplicationController
   before_filter :require_login
  def index
       if params[:registro] == nil or params[:registro] <= '0' then 
        params[:registro] = 2 
    end
    @records = Record.search(params[:buscar]).page(params[:page]).per_page(params[:registro].to_i)

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
