class AddBmToEntry < ActiveRecord::Migration[5.0]
  def change
    add_column :entries, :bm, :boolean, default: false
  end
end
