class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.references "green_card"
      t.references "player"
      t.integer "winner_id"
      t.integer "chooser_id"

      t.timestamps
    end
  end
end
