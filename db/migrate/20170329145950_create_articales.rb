class CreateArticales < ActiveRecord::Migration
  def change
    create_table :articales do |t|
      t.decimal :price, {percision:8, null:false}
      t.string :email, null: false
      t.string :title, null: false
      t.text :description, null: false
      t.integer :category_id

      t.timestamps(null: false)

    end
  end
end
