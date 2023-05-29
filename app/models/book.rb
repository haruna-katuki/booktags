class Book < ApplicationRecord
  belongs_to :user
  has_many :posts

  with_options presence: true do
    validates :title
    validates :author
  end
end
