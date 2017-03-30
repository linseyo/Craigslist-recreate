class AddKeyUrlToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :key_url, :string
  end
end
