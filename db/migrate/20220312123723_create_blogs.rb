class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :category, null: false, foreign_key: true
      t.string :title, null: false
      t.text :content, null: false
      t.string :slug, null: false
      t.string :urlfoto, null: false
      t.integer :views, default: 0

      t.timestamps
    end
  end
end
