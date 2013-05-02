class TypeMaterialsController < ApplicationController
  # GET /type_materials
  # GET /type_materials.json
  def index
    @type_materials = TypeMaterial.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @type_materials }
    end
  end

  # GET /type_materials/1
  # GET /type_materials/1.json
  def show
    @type_material = TypeMaterial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @type_material }
    end
  end

  # GET /type_materials/new
  # GET /type_materials/new.json
  def new
    @type_material = TypeMaterial.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @type_material }
    end
  end

  # GET /type_materials/1/edit
  def edit
    @type_material = TypeMaterial.find(params[:id])
  end

  # POST /type_materials
  # POST /type_materials.json
  def create
    @type_material = TypeMaterial.new(params[:type_material])

    respond_to do |format|
      if @type_material.save
        format.html { redirect_to @type_material, notice: 'Type material was successfully created.' }
        format.json { render json: @type_material, status: :created, location: @type_material }
      else
        format.html { render action: "new" }
        format.json { render json: @type_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /type_materials/1
  # PUT /type_materials/1.json
  def update
    @type_material = TypeMaterial.find(params[:id])

    respond_to do |format|
      if @type_material.update_attributes(params[:type_material])
        format.html { redirect_to @type_material, notice: 'Type material was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @type_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_materials/1
  # DELETE /type_materials/1.json
  def destroy
    @type_material = TypeMaterial.find(params[:id])
    @type_material.destroy

    respond_to do |format|
      format.html { redirect_to type_materials_url }
      format.json { head :no_content }
    end
  end
end
