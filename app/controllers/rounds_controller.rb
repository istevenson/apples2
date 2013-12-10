class RoundsController < ApplicationController
  def index
    @green_cards = GreenCard.where
  end
end
