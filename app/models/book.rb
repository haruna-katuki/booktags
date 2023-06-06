class Book < ApplicationRecord
  belongs_to :user
  has_many :posts, dependent: :destroy

  with_options presence: true do
    validates :title
    validates :author
    validates :total_page, numericality: { only_integer: true, message: "は半角数字で入力してください" }, allow_blank: true
  end
end
