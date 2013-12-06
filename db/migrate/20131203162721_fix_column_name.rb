class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :rounds, :winner_id, :winner
    rename_column :rounds, :chooser_id, :chooser
  end
end
