class AddarrTofeedback < ActiveRecord::Migration
  def change
    add_column :feedbacks, :arrs, :string, array: true

  end
end
