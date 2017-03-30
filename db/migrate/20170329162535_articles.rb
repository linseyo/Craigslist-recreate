class Articles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :price
      t.string :email
      t.string :title
      t.text :description
      t.integer :catagory_id
      t.timestamps null: false
    end
  end
end
