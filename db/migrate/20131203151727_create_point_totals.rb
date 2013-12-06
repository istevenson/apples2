class CreatePointTotals < ActiveRecord::Migration
  def change
    create_table :point_totals do |t|
      t.integer "total", default: 0
      t.references "player"

      t.timestamps
    end
  end
end
