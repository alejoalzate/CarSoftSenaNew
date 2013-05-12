class TeamsController < ApplicationController
  def index
     if params[:registro] == nil or params[:registro] <= '0' then 
        params[:registro] = 2 
    end
    @teams = Team.search(params[:buscar]).page(params[:page]).per_page(params[:registro].to_i)

    respond_to do |format|
      format.html 
      format.json { render json: @teams }
    end
  end
  def show
      @team = Team.find(params[:id])
  end

  def new
      @team = Team.new
  end

  def edit
     @team = Team.find(params[:id])
  end

  def create
      @team = Team.new(params[:team])
      render :action => :new unless @team.save
      
  end

  def update
      @team = Team.find(params[:id])
      render :action => :edit unless @team.update_attributes(params[:team])
  end

  def destroy
      @team = Team.find(params[:id])
      @team.destroy
     
  end  
end
