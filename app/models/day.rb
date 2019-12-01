class Day < ApplicationRecord
  belongs_to :user
  has_many :day_tasks
  has_many :tasks, through: :day_tasks
end
