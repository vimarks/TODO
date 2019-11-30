class CreateDays < ActiveRecord::Migration[6.0]
  def change
    create_table :days do |t|
      t.DateTime :start_time
      t.DateTime :end_time
      t.integer :user_id

      t.timestamps
    end
  end
end
