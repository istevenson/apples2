class GreenCard < ApplicationController
  def index
    @green_card = GreenCard.where("game_id = ?", params[:game_id])
  end

  def create
    @game = Game.find(params[:game_id])
    @green_card = GreenCard.new(params[:green_card])
    @green_card.save
  end

  def update
    @green_card.game_id = GreenCard.where("game_id = ?", params[:game_id]).first
    respond_to do |format|
      if @green_card.update
        format.html
        format.json { render json: @green_card }
      end
    end
  end
end
