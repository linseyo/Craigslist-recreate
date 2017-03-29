class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :description
      t.string :price
      t.string :email
      t.string :secret_link

      t.timestamps null: false
    end
  end
end
