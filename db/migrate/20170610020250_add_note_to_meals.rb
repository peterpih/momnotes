class AddNoteToMeals < ActiveRecord::Migration[5.0]
  def change
    add_column :meals, :note, :string
  end
end
