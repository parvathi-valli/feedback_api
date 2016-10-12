class RemoveSkill < ActiveRecord::Migration
  def change
    drop_table :skills
  end
end
