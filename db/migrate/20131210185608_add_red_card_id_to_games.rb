class AddRedCardIdToGames < ActiveRecord::Migration
  def change
    add_column :games, :red_card_id, :integer
  end
end
