class AddColumnToGames < ActiveRecord::Migration
  def change
    add_column :games, :secret_id, :string
  end
end
