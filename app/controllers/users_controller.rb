class UsersController < ApplicationController
   before_filter :find_user, :except => [ :index, :create, :new ]
  def index

    if params[:registro] == nil or params[:registro] <= '0' then 
        params[:registro] = 2 
    end
    @users = User.search(params[:buscar]).page(params[:page]).per_page(params[:registro].to_i)
    respond_to do |format|
      format.html 
      format.json { render json: @users }
    end
  end

  def show
      
  end

  def new
      @user = User.new
  end

  def edit
     
  end

  def create
      @user = User.new(params[:user])
      render :action => :new unless @user.save
      
  end

  def update
      render :action => :edit unless @user.update_attributes(params[:user])
  end

  def destroy
      @user.destroy   
  end

  private

  def find_user
      @user = User.find(params[:id]) if params[:id]
  end  
end