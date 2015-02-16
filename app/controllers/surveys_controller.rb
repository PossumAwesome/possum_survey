class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update, :destroy, :custom_edit, :custom_update]
  before_action :run_edit, only: [:edit]




  # GET
  def custom_edit
    # display a survey and its questions
    # have places to fill in responses
  end

  # POST
  def custom_update
    taker = Taker.create
    params[:number_questions].to_i.times do |i|
      current_response = params[("response"+(i+1).to_s).to_sym]
      response = Response.create(response_value: current_response, taker_id: taker.id, question_id: i+1)
    end

    redirect_to @survey, notice: 'Survey was successfully filled.'
  end



  # GET /surveys
  # GET /surveys.json
  def index
    if session[:author_id]
      @surveys = Survey.where author_id: session[:author_id]
    else
      @surveys = []
    end
  end

  # GET /surveys/1
  # GET /surveys/1.json
  def show
  end

  # GET /surveys/new
  def new
    @survey = Survey.new
    @survey.questions.build

    @survey.questions.each do |q|
      q.options.build
    end

  end

  # GET /surveys/1/edit
  def edit
    @survey.questions.build
    @survey.questions.each do |q|
      q.options.build
    end

  end

  # POST /surveys
  # POST /surveys.json
  def create
    @survey = Survey.new(survey_params)

    respond_to do |format|
      if @survey.save
        format.html { redirect_to @survey, notice: 'Survey was successfully created.' }
        format.json { render :show, status: :created, location: @survey }
      else
        format.html { render :new }
        format.json { render json: @survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surveys/1
  # PATCH/PUT /surveys/1.json
  def update
    respond_to do |format|
      if @survey.update(survey_params)
        format.html { redirect_to @survey, notice: 'Survey was successfully updated.' }
        format.json { render :show, status: :ok, location: @survey }
      else
        format.html { render :edit }
        format.json { render json: @survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surveys/1
  # DELETE /surveys/1.json
  def destroy
    @survey.destroy
    respond_to do |format|
      format.html { redirect_to surveys_url, notice: 'Survey was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey
      @survey = Survey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_params
      params.require(:survey).permit(:author_id, :title, :description,
        questions_attributes: [:id, :text, :description, :question_type, options_attributes: [:id, :response]])
    end

    def run_edit
      @survey.questions.each do |q|
        if q.responses.any?
          redirect_to surveys_path
          return
        end
      end
    end

end
