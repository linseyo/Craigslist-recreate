class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :price
      t.string :email
      t.text :description
      t.integer :category_id
      t.string :creator_key

      t.timestamps null: false
    end
  end
end
