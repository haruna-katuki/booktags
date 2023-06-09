require 'rails_helper'

RSpec.describe Book, type: :model do
  before do
    @book = FactoryBot.build(:book)
  end

  describe "本新規登録" do
    context "新規登録できる場合" do
      it "titleとauthorとtranslatorとpublisherとpublish_yearとtotal_pageとstart_dateとuserが存在すれば登録できる" do
        expect(@book).to be_valid
      end

      it "translatorが空でも登録できる" do
        @book.translator = ""
        expect(@book).to be_valid
      end

      it "publisherが空でも登録できる" do
        @book.publisher = ""
        expect(@book).to be_valid
      end

      it "publish_yearが空でも登録できる" do
        @book.publish_year = ""
        expect(@book).to be_valid
      end

      it "total_pageが空でも登録できる" do
        @book.total_page = ""
        expect(@book).to be_valid
      end

      it "start_dateが空でも登録できる" do
        @book.start_date = ""
        expect(@book).to be_valid
      end
    end

    context "新規登録できない場合" do
      it "titleが空では登録できない" do
        @book.title = ""
        @book.valid?
        expect(@book.errors.full_messages).to include("タイトルを入力してください")
      end

      it "authorが空では登録できない" do
        @book.author = ""
        @book.valid?
        expect(@book.errors.full_messages).to include("編著者を入力してください")
      end

      it "total_pageが半角数字でないと登録できない" do
        @book.total_page = "１２３"
        @book.valid?
        expect(@book.errors.full_messages).to include("総ページ数は半角数字で入力してください")
      end

      it "userが紐づいていないと登録できない" do
        @book.user = nil
        @book.valid?
        expect(@book.errors.full_messages).to include("Userを入力してください")
      end
    end
  end
end
