class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :favorite_genre
      t.string :favorite_book1
      t.string :favorite_book2
      t.string :favorite_book3
      t.string :favorite_author1
      t.string :favorite_author2
      t.string :favorite_author3
      t.date   :birth_date
      t.timestamps
    end
  end
end
