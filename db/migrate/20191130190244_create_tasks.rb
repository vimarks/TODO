class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.integer :category_id
      t.integer :location_id
      t.string :name
      t.string :description
      t.integer :duration
      t.string :priority
      t.datetime :deadline
      t.boolean :is_completed

      t.timestamps
    end
  end
end
