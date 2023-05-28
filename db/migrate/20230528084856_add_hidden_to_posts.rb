class AddHiddenToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :hidden_check, :boolean
  end
end
