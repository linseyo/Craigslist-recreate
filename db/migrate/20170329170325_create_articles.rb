class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.integer :price
      t.string :email, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
