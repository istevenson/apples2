class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string "name"
      t.boolean "active", default: false

      t.timestamps
    end
  end
end
