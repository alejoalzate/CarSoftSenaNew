class AreaCentersController < ApplicationController
  # GET /area_centers
  # GET /area_centers.json
  def index
    @area_centers = AreaCenter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @area_centers }
    end
  end

  # GET /area_centers/1
  # GET /area_centers/1.json
  def show
    @area_center = AreaCenter.find(params[:id])
  end

  # GET /area_centers/new
  # GET /area_centers/new.json
  def new
    @area_center = AreaCenter.new
  end

  # GET /area_centers/1/edit
  def edit
    @area_center = AreaCenter.find(params[:id])
  end

  # POST /area_centers
  # POST /area_centers.json
  def create
    @area_center = AreaCenter.new(params[:area_center])
    render :action => :new unless @area_center.save
  end

  # PUT /area_centers/1
  # PUT /area_centers/1.json
  def update
    @area_center = AreaCenter.find(params[:id])
    render :action => :edit unless @team.update_attributes(params[:area_center])
  end

  # DELETE /area_centers/1
  # DELETE /area_centers/1.json
  def destroy
    @area_center = AreaCenter.find(params[:id])
    @area_center.destroy
  end
end
