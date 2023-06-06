class Post < ApplicationRecord
  belongs_to :book
  has_many :likes

  validates :memo, presence: true, length: { maximum: 300 }
  validates :page, numericality: { only_integer: true, message: "は半角数字で入力してください" }, allow_blank: true

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end
end
