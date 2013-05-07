class ProgramsController < ApplicationController

  def index
    @programs = Program.all

    respond_to do |format|
      format.html 
      format.json { render json: @programs }
    end
  end

  def show
      @program = Program.find(params[:id])
  end

  def new
      @program = Program.new
  end

  def edit
     @program = Program.find(params[:id])
  end

  def create
      @program = Program.new(params[:program])
      render :action => :new unless @program.save
      
  end

  def update
      @program = Program.find(params[:id])
      render :action => :edit unless @program.update_attributes(params[:program])
  end

  def destroy
      @program = Program.find(params[:id])
      @program.destroy
     
  end  
end