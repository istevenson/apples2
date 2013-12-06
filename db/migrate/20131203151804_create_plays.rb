class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.references "player"
      t.references "game"
      t.string "hand"
      t.references "point_total"

      t.timestamps
    end
  end
end
