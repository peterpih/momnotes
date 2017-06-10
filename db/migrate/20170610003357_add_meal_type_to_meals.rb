class AddMealTypeToMeals < ActiveRecord::Migration[5.0]
  def change
    add_column :meals, :meal_type, :string
  end
end
