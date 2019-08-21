class AddDueToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :締切日, :date
  end
end
