class User < ApplicationRecord
  has_many :tasks
  has_many :locations, through: :tasks
  has_many :categories

end
