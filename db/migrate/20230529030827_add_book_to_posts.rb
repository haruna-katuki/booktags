class AddBookToPosts < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :book, null: false, foreign_key: true
  end
end
