class CreateMealTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :meal_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
