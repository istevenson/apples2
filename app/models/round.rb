class Round < ActiveRecord::Base
  belongs_to :game
  belongs_to :player
  # has_one :green_card
  # has_many :turns
  has_many :red_cards
  # belongs_to :chooser, :class_name => "Player", :foreign_key => "chooser"
  # belongs_to :winner, :class_name => "Player", :foreign_key => "winner"
end
