class QuestionsController < ApplicationController
  def index
    @questions = Question.all

    respond_to do |format|
      format.html
      format.json { render json: @questions }
    end
  end

  def show
      @question = Question.find(params[:id])
  end

  def new
      @question = Question.new
  end

  def edit
     @question = Question.find(params[:id])
  end

  def create
      @question = Question.new(params[:question])
      render :action => :new unless @question.save
      
  end

  def update
      @question = Question.find(params[:id])
      render :action => :edit unless @question.update_attributes(params[:question])
  end

  def destroy
      @question = Question.find(params[:id])
      @question.destroy
     
  end  
end