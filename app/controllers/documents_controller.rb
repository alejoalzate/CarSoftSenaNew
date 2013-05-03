class DocumentsController < ApplicationController
  def index
    @documents = Document.all

    respond_to do |format|
      format.html
      format.json { render json: @documents }
    end
  end
  def show
      @document = Document.find(params[:id])
  end

  def new
      @document = Document.new
  end

  def edit
      @document = Document.find(params[:id])
  end

  def create
      @document = Document.new(params[:document])
      render :action => :new unless @document.save
  end

  def update
      @document =  Document.find(params[:id])
      render :action => :edit unless @document.update_attributes(params[:document])
  end

  def destroy
      @document = Document.find(params[:id])
      @document.destroy
  end
  
end