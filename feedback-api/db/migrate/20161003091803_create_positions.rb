class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :position 
      t.timestamps null: false
    end
  end
end
