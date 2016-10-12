class AddColumnMrcooperToFeedbacks < ActiveRecord::Migration
  def change
    change_column :feedbacks, :hire, :string
    add_column :feedbacks, :isCooper, :boolean
  end
end
