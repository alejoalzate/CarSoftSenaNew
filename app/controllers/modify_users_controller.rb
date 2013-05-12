class ModifyUsersController < ApplicationController
 
  def index
    if params[:registro] == nil or params[:registro] <= '0' then 
        params[:registro] = 2 
    end
    @modify_users = ModifyUser.search(params[:buscar]).page(params[:page]).per_page(params[:registro].to_i)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @modify_users }
    end
  end
  def show
      @modify_user = ModifyUser.find(params[:id])
  end

  def new
      @modify_user = ModifyUser.new
  end

  def edit
      @modify_user = ModifyUser.find(params[:id])
  end

  def create
      @modify_user = ModifyUser.new(params[:modify_user])
      render :action => :new unless @modify_user.save
  end

  def update
      @modify_user = ModifyUser.find(params[:id])
      render :action => :edit unless @modify_user.update_attributes(params[:modify_user])
  end

  def destroy
      @modify_user = ModifyUser.find(params[:id])
      @modify_user.destroy
  end
  
end
