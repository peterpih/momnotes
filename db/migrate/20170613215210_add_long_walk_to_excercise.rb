class AddLongWalkToExcercise < ActiveRecord::Migration[5.0]
  def change
    add_column :excercises, :long_walk, :boolean, default: false
  end
end
