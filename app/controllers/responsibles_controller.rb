class ResponsiblesController < ApplicationController
   before_filter :require_login
  before_filter :find_responsible, :except => [ :index, :create, :new ]

  def index
    @responsibles = Responsible.all

    respond_to do |format|
      format.html 
      format.json { render json: @responsibles }
    end
  end

  def show
  end

  def new
    @responsible = Responsible.new
  end

  def edit
  end

  def create
    @responsible = Responsible.new(params[:responsible])
    render :action => :new unless @responsible.save
  end

  def update
    render :action => :edit unless @responsible.update_attributes(params[:responsible])
  end

  def destroy
    @responsible.destroy
  end

  private
  def find_responsible
      @responsible = Responsible.find(params[:id]) if params[:id]
  end
  

end
