class Location < ApplicationRecord
  has_many :tasks
  belongs_to :user

end
