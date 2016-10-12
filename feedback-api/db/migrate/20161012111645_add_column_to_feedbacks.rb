class AddColumnToFeedbacks < ActiveRecord::Migration
  def change
    add_column :feedbacks, :skill, :hstore
    add_column :feedbacks, :behaviour, :hstore
  end
end
