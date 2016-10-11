class Skills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :skill
      t.string :pid, array: true
      t.timestamps null: false
    end
  end
end
