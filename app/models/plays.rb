class Plays < ActiveRecord::Base
  belongs_to :player
  belongs_to :game
  has_one :point_total
  has_one :hand #plays should have its player's current hand
end
