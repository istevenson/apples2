class AddRedCardIdToRound < ActiveRecord::Migration
  def change
    add_column :rounds, :red_card_id, :integer
  end
end
