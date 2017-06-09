class CreateToilets < ActiveRecord::Migration[5.0]
  def change
    create_table :toilets do |t|
      t.datetime :in
      t.datetime :out

      t.timestamps
    end
  end
end
