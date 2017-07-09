class AddNotesToSnf < ActiveRecord::Migration[5.0]
  def change
    add_column :snfs, :notes, :text
  end
end
