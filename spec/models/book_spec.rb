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
      end

      it "publisherが空でも登録できる" do
      end

      it "publish_yearが空でも登録できる" do
      end

      it "total_pageが空でも登録できる" do
      end

      it "start_dateが空でも登録できる" do
      end
    end

    context "新規登録できない場合" do
      it "titleが空では登録できない" do
      end

      it "authorが空では登録できない" do
      end

      it "total_pageが半角数字でないと登録できない" do
      end

      it "userが紐づいていないと登録できない" do
      end
    end
  end
end
