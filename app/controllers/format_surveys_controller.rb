class FormatSurveysController < ApplicationController
  # GET /format_surveys
  # GET /format_surveys.json
  def index
    @format_surveys = FormatSurvey.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @format_surveys }
    end
  end

  # GET /format_surveys/1
  # GET /format_surveys/1.json
  def show
    @format_survey = FormatSurvey.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @format_survey }
    end
  end

  # GET /format_surveys/new
  # GET /format_surveys/new.json
  def new
    @format_survey = FormatSurvey.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @format_survey }
    end
  end

  # GET /format_surveys/1/edit
  def edit
    @format_survey = FormatSurvey.find(params[:id])
  end

  # POST /format_surveys
  # POST /format_surveys.json
  def create
    @format_survey = FormatSurvey.new(params[:format_survey])

    respond_to do |format|
      if @format_survey.save
        format.html { redirect_to @format_survey, notice: 'Format survey was successfully created.' }
        format.json { render json: @format_survey, status: :created, location: @format_survey }
      else
        format.html { render action: "new" }
        format.json { render json: @format_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /format_surveys/1
  # PUT /format_surveys/1.json
  def update
    @format_survey = FormatSurvey.find(params[:id])

    respond_to do |format|
      if @format_survey.update_attributes(params[:format_survey])
        format.html { redirect_to @format_survey, notice: 'Format survey was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @format_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /format_surveys/1
  # DELETE /format_surveys/1.json
  def destroy
    @format_survey = FormatSurvey.find(params[:id])
    @format_survey.destroy

    respond_to do |format|
      format.html { redirect_to format_surveys_url }
      format.json { head :no_content }
    end
  end
end
