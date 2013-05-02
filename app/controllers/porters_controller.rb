class PortersController < ApplicationController
  # GET /porters
  # GET /porters.json
  def index
    @porters = Porter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @porters }
    end
  end

  # GET /porters/1
  # GET /porters/1.json
  def show
    @porter = Porter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @porter }
    end
  end

  # GET /porters/new
  # GET /porters/new.json
  def new
    @porter = Porter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @porter }
    end
  end

  # GET /porters/1/edit
  def edit
    @porter = Porter.find(params[:id])
  end

  # POST /porters
  # POST /porters.json
  def create
    @porter = Porter.new(params[:porter])

    respond_to do |format|
      if @porter.save
        format.html { redirect_to @porter, notice: 'Porter was successfully created.' }
        format.json { render json: @porter, status: :created, location: @porter }
      else
        format.html { render action: "new" }
        format.json { render json: @porter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /porters/1
  # PUT /porters/1.json
  def update
    @porter = Porter.find(params[:id])

    respond_to do |format|
      if @porter.update_attributes(params[:porter])
        format.html { redirect_to @porter, notice: 'Porter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @porter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /porters/1
  # DELETE /porters/1.json
  def destroy
    @porter = Porter.find(params[:id])
    @porter.destroy

    respond_to do |format|
      format.html { redirect_to porters_url }
      format.json { head :no_content }
    end
  end
end
