class CenterProgramsController < ApplicationController
  # GET /center_programs
  # GET /center_programs.json
  def index
    @center_programs = CenterProgram.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @center_programs }
    end
  end

  # GET /center_programs/1
  # GET /center_programs/1.json
  def show
    @center_program = CenterProgram.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @center_program }
    end
  end

  # GET /center_programs/new
  # GET /center_programs/new.json
  def new
    @center_program = CenterProgram.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @center_program }
    end
  end

  # GET /center_programs/1/edit
  def edit
    @center_program = CenterProgram.find(params[:id])
  end

  # POST /center_programs
  # POST /center_programs.json
  def create
    @center_program = CenterProgram.new(params[:center_program])

    respond_to do |format|
      if @center_program.save
        format.html { redirect_to @center_program, notice: 'Center program was successfully created.' }
        format.json { render json: @center_program, status: :created, location: @center_program }
      else
        format.html { render action: "new" }
        format.json { render json: @center_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /center_programs/1
  # PUT /center_programs/1.json
  def update
    @center_program = CenterProgram.find(params[:id])

    respond_to do |format|
      if @center_program.update_attributes(params[:center_program])
        format.html { redirect_to @center_program, notice: 'Center program was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @center_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /center_programs/1
  # DELETE /center_programs/1.json
  def destroy
    @center_program = CenterProgram.find(params[:id])
    @center_program.destroy

    respond_to do |format|
      format.html { redirect_to center_programs_url }
      format.json { head :no_content }
    end
  end
end
