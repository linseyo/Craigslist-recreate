class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.money :price, null: false
      t.string :email, null: false

      t.timestamps null: false
    end
  end
end
