class RemovePageFromPosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :page, :integer
  end
end
