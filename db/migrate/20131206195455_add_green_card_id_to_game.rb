class AddGreenCardIdToGame < ActiveRecord::Migration
  def change
    add_column :games, :green_card_id, :integer
  end
end
