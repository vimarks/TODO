class Task < ApplicationRecord
  belongs_to :category
  belongs_to :user
  belongs_to :location
  has_many :day_tasks
  has_many :days, through: :day_tasks
end
