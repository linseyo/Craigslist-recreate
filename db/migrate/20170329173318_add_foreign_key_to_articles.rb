class AddForeignKeyToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :category_id, :integer, null: false
  end
end
