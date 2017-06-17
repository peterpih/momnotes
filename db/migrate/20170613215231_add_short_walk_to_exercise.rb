class AddShortWalkToExcercise < ActiveRecord::Migration[5.0]
  def change
    add_column :excercises, :short_walk, :boolean, default: false
  end
end
