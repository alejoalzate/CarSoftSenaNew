class SuggestionsController < ApplicationController
  
  def index
      if params[:registro] == nil or params[:registro] <= '0' then 
        params[:registro] = 2 
    end
    @suggestions = Suggestion.search(params[:buscar]).page(params[:page]).per_page(params[:registro].to_i)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @suggestions }
    end
  end

  def show
      @suggestion = Suggestion.find(params[:id])
  end

  def new
      @suggestion = Suggestion.new
  end

  def edit
      @suggestion = Suggestion.find(params[:id])
  end

  def create
      @suggestion = Suggestion.new(params[:suggestion])
      render :action => :new unless @suggestion.save
      
  end

  def update
      @suggestion = Suggestion.find(params[:id])
      render :action => :edit unless @suggestion.update_attributes(params[:suggestion])
  end

  def destroy
      @suggestion = Suggestion.find(params[:id])
      @suggestion.destroy
     
  end  
end
