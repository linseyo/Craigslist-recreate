class UpdateArticles < ActiveRecord::Migration
  def change
    change_table :articles do |t|
      t.string :text, null: false
    end
  end
end
