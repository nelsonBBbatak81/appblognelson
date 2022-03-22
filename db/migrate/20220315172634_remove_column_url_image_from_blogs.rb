class RemoveColumnUrlImageFromBlogs < ActiveRecord::Migration[6.0]
  def change
    remove_column :blogs, :urlfoto
  end
end
