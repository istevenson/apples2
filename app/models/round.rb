class Round < ActiveRecord::Base
  belongs_to :game
  has_one :green_card
  has_many :turns
  belongs_to :chooser, :class_name => "Player", :foreign_key => "chooser"
  belongs_to :winner, :class_name => "Player", :foreign_key => "winner"
end
