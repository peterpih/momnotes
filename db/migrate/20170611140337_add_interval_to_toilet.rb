class AddIntervalToToilet < ActiveRecord::Migration[5.0]
  def change
    add_column :toilets, :interval, :integer
  end
end
