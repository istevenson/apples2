class CreateRedCards < ActiveRecord::Migration
  def change
    create_table :red_cards do |t|
      t.string "noun"
      t.text "description"
      t.references "game"

      t.timestamps
    end
  end
end
