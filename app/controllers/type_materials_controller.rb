class TypeMaterialsController < ApplicationController
  def index
    @type_materials = TypeMaterial.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @type_materials }
    end
  end
  def show
      @type_material = TypeMaterial.find(params[:id])
  end

  def new
      @type_material = TypeMaterial.new
  end

  def edit
     @type_material = TypeMaterial.find(params[:id])
  end

  def create
      @type_material = TypeMaterial.new(params[:type_material ])
      render :action => :new unless @type_material.save
      
  end

  def update
      @type_material = TypeMaterial.find(params[:id])
      render :action => :edit unless @type_material.update_attributes(params[:type_material ])
  end

  def destroy
      @type_material = TypeMaterial.find(params[:id])
      @type_material.destroy
     
  end  
end