class SurveysController < ApplicationController
  def index
    @surveys = Survey.all

    respond_to do |format|
      format.html 
      format.json { render json: @surveys }
    end
  end
  def show
      @survey = Survey.find(params[:id])
  end

  def new
      @survey = Survey.new
  end

  def edit
     @survey = Survey.find(params[:id])
  end

  def create
      @survey = Survey.new(params[:survey])
      render :action => :new unless @survey.save
      
  end

  def update
      @survey = Survey.find(params[:id])
      render :action => :edit unless @survey.update_attributes(params[:survey])
  end

  def destroy
      @survey = Survey.find(params[:id])
      @survey.destroy
     
  end  
end