class TypeUsersController < ApplicationController
  # GET /type_users
  # GET /type_users.json
  def index
    @type_users = TypeUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @type_users }
    end
  end

  # GET /type_users/1
  # GET /type_users/1.json
  def show
    @type_user = TypeUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @type_user }
    end
  end

  # GET /type_users/new
  # GET /type_users/new.json
  def new
    @type_user = TypeUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @type_user }
    end
  end

  # GET /type_users/1/edit
  def edit
    @type_user = TypeUser.find(params[:id])
  end

  # POST /type_users
  # POST /type_users.json
  def create
    @type_user = TypeUser.new(params[:type_user])

    respond_to do |format|
      if @type_user.save
        format.html { redirect_to @type_user, notice: 'Type user was successfully created.' }
        format.json { render json: @type_user, status: :created, location: @type_user }
      else
        format.html { render action: "new" }
        format.json { render json: @type_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /type_users/1
  # PUT /type_users/1.json
  def update
    @type_user = TypeUser.find(params[:id])

    respond_to do |format|
      if @type_user.update_attributes(params[:type_user])
        format.html { redirect_to @type_user, notice: 'Type user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @type_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_users/1
  # DELETE /type_users/1.json
  def destroy
    @type_user = TypeUser.find(params[:id])
    @type_user.destroy

    respond_to do |format|
      format.html { redirect_to type_users_url }
      format.json { head :no_content }
    end
  end
end
