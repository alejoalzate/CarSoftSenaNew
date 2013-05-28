class AuthorizationsController < ApplicationController
  # GET /authorizations
  # GET /authorizations.json
  def index
    @authorizations = Authorization.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @authorizations }
    end
  end

  # GET /authorizations/1
  # GET /authorizations/1.json
  def show
    @authorization = Authorization.find(params[:id])
  end

  # GET /authorizations/new
  # GET /authorizations/new.json
  def new
    @authorization = Authorization.new
  end

  # GET /authorizations/1/edit
  def edit
    @authorization = Authorization.find(params[:id])
  end

  # POST /authorizations
  # POST /authorizations.json
  def create
    @authorization = Authorization.new(params[:authorization])
    render :action => :new unless @authorization.save
  end

  # PUT /authorizations/1
  # PUT /authorizations/1.json
  def update
    @authorization = Authorization.find(params[:id])
    render :action => :edit unless @authorization.update_attributes(params[:authorization])
  end

  # DELETE /authorizations/1
  # DELETE /authorizations/1.json
  def destroy
    @authorization = Authorization.find(params[:id])
    @authorization.destroy
  end
end
