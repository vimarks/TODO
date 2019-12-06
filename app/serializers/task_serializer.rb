class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :priority,  :duration, :description, :name, :deadline, :is_completed
  belongs_to :user
  belongs_to :location
  belongs_to :category
end
