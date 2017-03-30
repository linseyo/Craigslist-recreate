class ChangeColumnTypeArticles < ActiveRecord::Migration
  def change
    change_column :articles, :price, :float
  end
end
