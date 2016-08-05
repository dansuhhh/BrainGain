class Api::DecksController < ApplicationController

  def index
    @decks = Deck.all
    render "api/decks/index"
  end

  def create
    @deck = Deck.new(deck_params)
    if @deck.save
      render "api/decks/show"
    else
      render json: @deck.errors.full_messages, status: 422
    end
  end

  def update
    @deck = Deck.find(params[:id])
    if @deck.update_attributes(deck_params)
      render "api/decks/show"
    else
      render json: @deck.errors.full_message, status: 422
    end
  end

  def show
    @deck = Deck.find(params[:id])
    render "api/decks/show"
  end

  def destroy
    @deck = Deck.find(params[:id])
    @deck.destroy!
    render "api/decks/show"
  end

  private
  def deck_params
    params.require(:deck).permit(:title, :description, :subject_id)
  end

end
