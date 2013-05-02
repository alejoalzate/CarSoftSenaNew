class ModifyUsersController < ApplicationController
  # GET /modify_users
  # GET /modify_users.json
  def index
    @modify_users = ModifyUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @modify_users }
    end
  end

  # GET /modify_users/1
  # GET /modify_users/1.json
  def show
    @modify_user = ModifyUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @modify_user }
    end
  end

  # GET /modify_users/new
  # GET /modify_users/new.json
  def new
    @modify_user = ModifyUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @modify_user }
    end
  end

  # GET /modify_users/1/edit
  def edit
    @modify_user = ModifyUser.find(params[:id])
  end

  # POST /modify_users
  # POST /modify_users.json
  def create
    @modify_user = ModifyUser.new(params[:modify_user])

    respond_to do |format|
      if @modify_user.save
        format.html { redirect_to @modify_user, notice: 'Modify user was successfully created.' }
        format.json { render json: @modify_user, status: :created, location: @modify_user }
      else
        format.html { render action: "new" }
        format.json { render json: @modify_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /modify_users/1
  # PUT /modify_users/1.json
  def update
    @modify_user = ModifyUser.find(params[:id])

    respond_to do |format|
      if @modify_user.update_attributes(params[:modify_user])
        format.html { redirect_to @modify_user, notice: 'Modify user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @modify_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modify_users/1
  # DELETE /modify_users/1.json
  def destroy
    @modify_user = ModifyUser.find(params[:id])
    @modify_user.destroy

    respond_to do |format|
      format.html { redirect_to modify_users_url }
      format.json { head :no_content }
    end
  end
end
