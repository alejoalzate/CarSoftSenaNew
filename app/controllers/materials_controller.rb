class MaterialsController < ApplicationController
  def index
    if params[:registro] == nil or params[:registro] <= '0' then 
        params[:registro] = 2 
    end
    @materials = Material.search(params[:buscar]).page(params[:page]).per_page(params[:registro].to_i)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @materials }
    end
  end
  def show
      @material = Material.find(params[:id])
  end

  def new
      @material = Material.new
  end

  def edit
      @material = Material.find(params[:id])
  end

  def create
      @material = Material.new(params[:material])
      render :action => :new unless @material.save
  end

  def update
      @material = Material.find(params[:id])
      render :action => :edit unless @material.update_attributes(params[:material])
  end

  def destroy
      @material = Material.find(params[:id])
      @material.destroy
  end
  
end
