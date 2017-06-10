class Meal < ApplicationRecord
  has_many :meal_foods, dependent: :destroy
  has_many :foods, through: :meal_foods
end
