class RemoveMealIdFromFoodsTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :foods,  :meal_id  
  end
end
