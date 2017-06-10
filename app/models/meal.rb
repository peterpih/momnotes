class Meal < ApplicationRecord
  has_one :meal_type
  has_many :foods, dependent: :destroy
end
