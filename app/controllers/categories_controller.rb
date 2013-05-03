class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @category }
    end
    
  end

  def show
      @category = Category.find(params[:id])
  end

  def new
      @category = Category.new
  end

  def edit
      @category = Category.find(params[:id])
  end

  def create
      @category = Category.new(params[:category])
      render :action => :new unless @category.save
  end

  def update
      @category = Category.find(params[:id])
      render :action => :edit unless @category.update_attributes(params[:category])
  end

  def destroy
      @category = Category.find(params[:id])
      @category.destroy
  end
  
end