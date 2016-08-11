class Api::CardsController < ApplicationController

  def index
    @cards = Card.where(deck_id: params[:currentDeckId])
    render "api/cards/index"
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      Mastery.create!({
        user_id: current_user.id,
        card_id: @card.id,
        level: 0
        })
      render "api/cards/show"
    else
      render json: @card.errors.full_messages, status: 422
    end
  end

  def update
    @card = Card.find(params[:id])
    if @card.update(card_params)
      render "api/cards/show"
    else
      render json: @card.errors.full_message, status: 422
    end
  end

  def show
    @card = Card.find(params[:id])
    render "api/cards/show"
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy!
    render "api/cards/show"
  end

  private
  def card_params
    params.require(:card).permit(:question, :answer, :deck_id)
  end

end
