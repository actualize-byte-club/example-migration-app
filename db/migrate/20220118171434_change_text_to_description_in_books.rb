class ChangeTextToDescriptionInBooks < ActiveRecord::Migration[7.0]
  def change
    rename_column :books, :text, :description
    change_column :books, :description, :text
  end
end
