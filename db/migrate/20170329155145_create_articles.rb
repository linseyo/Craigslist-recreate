class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.string :contact, null: false
      t.integer :price, null: false
      t.string :secret_link

      t.timestamps null: false
    end
  end
end
