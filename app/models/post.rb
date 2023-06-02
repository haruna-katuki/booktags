class Post < ApplicationRecord
  belongs_to :book
  has_many :likes

  validates :memo, presence: true, length: { maximum: 300 }
end
