class ResponsiblesController < ApplicationController

  before_filter :find_area_center_responsibles

  def index
    @responsibles = Responsible.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @responsibles }
    end
  end

  # GET /responsibles/1
  # GET /responsibles/1.json
  def show
    @responsible = Responsible.find(params[:id])
  end

  # GET /responsibles/new
  # GET /responsibles/new.json
  def new
    @responsible = Responsible.new
  end

  # GET /responsibles/1/edit
  def edit
    @responsible = Responsible.find(params[:id])
  end

  # POST /responsibles
  # POST /responsibles.json
  def create
    @responsible = Responsible.new(params[:responsible])
    @responsible.name = Responsible.responsible_ubicacion(@responsible.name, @area_center)
    render :action => :new unless @responsible.save
  end

  # PUT /responsibles/1
  # PUT /responsibles/1.json
  def update
    @responsible = Responsible.find(params[:id])
    render :action => :edit unless @responsible.update_attributes(params[:responsible])
  end

  # DELETE /responsibles/1
  # DELETE /responsibles/1.json
  def destroy
    @responsible = Responsible.find(params[:id])
    @responsible.destroy
  end

  private
  def find_area_center_responsibles
     @area_center = AreaCenter.find(params[:area_center_id])
     @responsible = Responsible.find(params[:id]) if params[:id]
  end

end
