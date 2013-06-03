class CentersController < ApplicationController
  before_filter :find_center, :except => [ :index, :create, :new ]

  def index
   if params[:registro] == nil or params[:registro] <= '0' then 
        params[:registro] = 2 
    end
    @centers = Center.search(params[:buscar]).page(params[:page]).per_page(params[:registro].to_i)

    respond_to do |format|
      format.html 
      format.json { render json: @centers }
    end
  end

  def show
      @center = Center.find(params[:id])
  end

  def new
      @center = Center.new
  end

  def edit
      @center = Center.find(params[:id])
  end

  def create
      @center = Center.new(params[:center])
      render :action => :new unless @center.save
  end

  def update
      @center = Center.find(params[:id])
      render :action => :edit unless @center.update_attributes(params[:center])
  end

  def destroy
      @center = Center.find(params[:id])
      @center.destroy
  end
  
  private
  def find_center
      @center = Center.find(params[:id]) if params[:id]
  end
  
end