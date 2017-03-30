class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string  :title, null: false
      t.decimal :price, precision: 8, scale: 2
      t.string  :email, null: false
      t.string  :description, null: false

      t.timestamps null: false
    end
  end
end
