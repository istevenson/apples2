class AddRoundIdToTurn < ActiveRecord::Migration
  def change
    add_column :turns, :round_id, :integer
  end
end
