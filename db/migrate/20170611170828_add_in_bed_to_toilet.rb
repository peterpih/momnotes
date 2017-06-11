class AddInBedToToilet < ActiveRecord::Migration[5.0]
  def change
    add_column :toilets, :inbed, :boolean, default: false
  end
end
