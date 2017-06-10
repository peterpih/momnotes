class AddDateToMeals < ActiveRecord::Migration[5.0]
  def change
    add_column :meals, :date, :datetime
  end
end
