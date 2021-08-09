class AddBodyToGossips < ActiveRecord::Migration[5.2]
  def change
    add_column :gossips, :body, :string
  end
end
