class AddLinkToSnf < ActiveRecord::Migration[5.0]
  def change
    add_column :snfs, :link, :string
  end
end
