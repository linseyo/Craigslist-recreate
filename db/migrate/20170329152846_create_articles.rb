class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.integer :price, null: false
      t.text :description, null: false
      t.string :email, null: false
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
