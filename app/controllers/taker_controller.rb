class TakerController < ApplicationController

  def new
    @taker = Taker.new
  end

  def create
    @taker = Taker.new(taker_params)

    respond_to do |format|
      if @taker.save
        format.html { redirect_to @taker, notice: 'submission was successfully created.' }
        format.json { render :show, status: :created, location: @taker }
      else
        format.html { render :new }
        format.json { render json: @taker.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def update
  end

  def index
    @takers = Taker.where(survey_id: params[:survey_id])
  end


  private
  def set_taker
    @taker = Taker.find(params[:id])
  end

  def taker_params
    params.require(:taker).permit(:survey_id)
  end

end
