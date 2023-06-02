class Post < ApplicationRecord
  belongs_to :book
  has_many :likes

  validates :memo, presence: true, length: { maximum: 300 }

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end
end
