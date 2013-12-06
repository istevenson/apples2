class Turn < ActiveRecord::Base
  belongs_to :player
  has_many :red_cards
end
