class CreateTurns < ActiveRecord::Migration
  def change
    create_table :turns do |t|
      t.references "player"
      t.references "red_card"

      t.timestamps
    end
  end
end
