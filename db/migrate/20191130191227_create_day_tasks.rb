class CreateDayTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :day_tasks do |t|
      t.integer :day_id
      t.integer :task_id

      t.timestamps
    end
  end
end
