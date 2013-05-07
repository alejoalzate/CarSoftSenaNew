class TypeUsersController < ApplicationController
  def index
    @type_users = TypeUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @type_users }
    end
  end
  def show
      @type_user = TypeUser.find(params[:id])
  end

  def new
      @type_user = TypeUser.new
  end

  def edit
     @type_user = TypeUser.find(params[:id])
  end

  def create
      @type_user = TypeUser.new(params[:type_user ])
      render :action => :new unless @type_user.save
      
  end

  def update
      @type_user = TypeUser.find(params[:id])
      render :action => :edit unless @type_user.update_attributes(params[:type_user ])
  end

  def destroy
      @type_user = TypeUser.find(params[:id])
      @type_user.destroy
     
  end  
end