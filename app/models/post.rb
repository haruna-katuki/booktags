class Post < ApplicationRecord
  belongs_to :book

  validates :memo, presence: true, length: { maximum: 300 }
end
