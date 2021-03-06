class Api::MasteriesController < ApplicationController
  def index
    @masteries = Mastery.where(user_id: current_user.id)
    render "api/masteries/index"
  end

  def create
    @mastery = Mastery.new(mastery_params)
    @mastery.level = 0
    @mastery.user_id = current_user.id
    if @mastery.save
      render "api/masteries/show"
    else
      render json: @mastery.errors.full_messages, status: 422
    end
  end

  def update
    @mastery = Mastery.find(params[:id])
    if @mastery.update(mastery_params)
      render "api/masteries/show"
    else
      render json: @mastery.errors.full_message, status: 422
    end
  end

  def show
    @mastery = Mastery.find(params[:id])
    render "api/masteries/show"
  end

  private
  def mastery_params
    params.require(:mastery).permit(:card_id, :level)
  end

end
