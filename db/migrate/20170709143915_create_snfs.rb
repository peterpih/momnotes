class CreateSnfs < ActiveRecord::Migration[5.0]
  def change
    create_table :snfs do |t|
      t.string :name
      t.string :number
      t.string :address
      t.string :contact
      t.string :rating

      t.timestamps
    end
  end
end
