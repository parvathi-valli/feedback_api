class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :candidate_name, :null =>false
      t.string :position, :null =>false
      #t.hstore :skill
      #t.hstore :behaviour
      t.text :additional, :null =>true
      t.boolean :hire, :null =>false
      t.timestamps null: false
    end
  end
end
