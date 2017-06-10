class CreateExcercises < ActiveRecord::Migration[5.0]
  def change
    create_table :excercises do |t|
      t.datetime :time
      t.text :note

      t.timestamps
    end
  end
end
