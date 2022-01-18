class MakeChangesToBooks < ActiveRecord::Migration[7.0]
  def change
    rename_column :books, :title, :name
    rename_column :books, :description, :text
    add_column :books, :price, :decimal, precision: 5, scale: 2
    remove_column :books, :author, :string
  end
end
