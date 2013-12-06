class CreateGreenCards < ActiveRecord::Migration
  def change
    create_table :green_cards do |t|
      t.string "adjective"
      t.text "description"
      t.references "game"

      t.timestamps
    end
  end
end
