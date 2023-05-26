class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string  :title,          null: false
      t.string  :author,         null: false
      t.string  :translator
      t.string  :publisher
      t.string  :publish_year
      t.integer :total_page
      t.date    :start_date
      t.timestamps
    end
  end
end
