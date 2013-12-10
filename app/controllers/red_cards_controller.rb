class RedCard < ApplicationController
  def index
    @red_cards = RedCard.where("game_id = ?", params[:game_id])
  end

  def create
    @game = Game.find(params[:game_id])
    @red_card = RedCard.new(params[:red_card])
    @red_card.save
  end

  def update
    @red_card.game_id = RedCard.where("game_id = ?", params[:game_id]).first
    respond_to do |format|
      if @red_card.update
        format.html
        format.json { render json: @red_card }
      end
    end
  end
end
