class TurnsController < ApplicationController
  def index
    @turns = Turn.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @turns }
    end
  end
  def show
      @turn = Turn.find(params[:id])
  end

  def new
      @turn = Turn.new
  end

  def edit
     @turn = Turn.find(params[:id])
  end

  def create
      @turn= Turn.new(params[:turn ])
      render :action => :new unless @turn.save
      
  end

  def update
      @turn = Turn.find(params[:id])
      render :action => :edit unless @turn.update_attributes(params[:turn ])
  end

  def destroy
      @turn = Turn.find(params[:id])
      @turn.destroy
     
  end  
end