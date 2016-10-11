class RemoveColumnArrsFromFeedback < ActiveRecord::Migration
  def change
    remove_column :feedbacks, :arrs, :array

  end
end
