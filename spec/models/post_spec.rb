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
      end

      it "hidden_checkがfalseでも投稿できる" do
      end
    end

    context "新規投稿できない場合" do
      it "bookが紐づいていないと投稿できない" do
      end

      it "memoが空では投稿できない" do
      end

      it "memoが301文字以上だと投稿できない" do
      end

      it "pageが半角数字でないと投稿できない" do
      end
    end
  end
end
