class RhsController < ApplicationController
  # GET /rhs
  # GET /rhs.json
  def index
    @rhs = Rh.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rhs }
    end
  end

  # GET /rhs/1
  # GET /rhs/1.json
  def show
    @rh = Rh.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rh }
    end
  end

  # GET /rhs/new
  # GET /rhs/new.json
  def new
    @rh = Rh.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rh }
    end
  end

  # GET /rhs/1/edit
  def edit
    @rh = Rh.find(params[:id])
  end

  # POST /rhs
  # POST /rhs.json
  def create
    @rh = Rh.new(params[:rh])

    respond_to do |format|
      if @rh.save
        format.html { redirect_to @rh, notice: 'Rh was successfully created.' }
        format.json { render json: @rh, status: :created, location: @rh }
      else
        format.html { render action: "new" }
        format.json { render json: @rh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rhs/1
  # PUT /rhs/1.json
  def update
    @rh = Rh.find(params[:id])

    respond_to do |format|
      if @rh.update_attributes(params[:rh])
        format.html { redirect_to @rh, notice: 'Rh was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rhs/1
  # DELETE /rhs/1.json
  def destroy
    @rh = Rh.find(params[:id])
    @rh.destroy

    respond_to do |format|
      format.html { redirect_to rhs_url }
      format.json { head :no_content }
    end
  end
end
