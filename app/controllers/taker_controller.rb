class TakerController < ApplicationController
  belongs_to :survey
  def new
  end

  def create
  end

  def show
  end

  def update
  end

  def index
    @takers = Taker.where(survey_id: params[:survey_id])
  end


  private
  def set_submission
  end

  def submission_params
    params.require(:taker).permit(:survey_id)
  end

end
