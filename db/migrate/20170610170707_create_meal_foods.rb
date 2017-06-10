class CreateMealFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :meal_foods do |t|
      t.belongs_to :meal, index: true
      t.belongs_to :food, index: true

      t.timestamps
    end
  end
end
