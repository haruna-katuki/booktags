require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe "読書メモ新規投稿" do
    context "新規投稿できる場合" do
      it "bookとmemoとpageが存在し、hidden_checkがtrueであれば投稿できる" do
        expect(@post).to be_valid
      end

      it "pageが空でも投稿できる" do
        @post.page = ""
        expect(@post).to be_valid
      end

      it "hidden_checkがfalseでも投稿できる" do
        @post.hidden_check = "false"
        expect(@post).to be_valid
      end
    end

    context "新規投稿できない場合" do
      it "bookが紐づいていないと投稿できない" do
        @post.book = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("Bookを入力してください")
      end

      it "memoが空では投稿できない" do
        @post.memo = ""
        @post.valid?
        expect(@post.errors.full_messages).to include("感想メモを入力してください")
      end

      it "memoが301文字以上だと投稿できない" do
        @post.memo = Faker::Lorem.characters(number: 301)
        @post.valid?
        expect(@post.errors.full_messages).to include("感想メモは300文字以内で入力してください")
      end

      it "pageが半角数字でないと投稿できない" do
        @post.page = "１２３"
        @post.valid?
        expect(@post.errors.full_messages).to include("ページ数は半角数字で入力してください")
      end
    end
  end
end
