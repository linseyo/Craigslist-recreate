class ChangeColumnTypeToStringArticles < ActiveRecord::Migration
  def change
    change_column :articles, :price, :string
  end
end
