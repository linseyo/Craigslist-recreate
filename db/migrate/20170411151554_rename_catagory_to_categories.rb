class RenamecategoryToCategories < ActiveRecord::Migration
  def change
    rename_table 'categories', 'categories'
  end
end
