class RenameArticlesToProducts < ActiveRecord::Migration[7.0]
  def change
    rename_table :articles, :products
  end
end
