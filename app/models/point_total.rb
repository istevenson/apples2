class PointTotal < ActiveRecord::Base
  belongs_to :player, through: :plays
end
