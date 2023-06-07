require 'rails_helper'

RSpec.describe Profile, type: :model do
  before do
    @profile = FactoryBot.build(:profile)
  end

  describe "プロフィール新規登録" do
    context "新規登録できる場合" do
      it "favorite_genreとfavorite_book1とfavorite_book2とfavorite_book3とfavorite_author1とfavorite_author2とfavorite_author3とbirth_dateが存在すれば登録できる" do
        expect(@profile).to be_valid
      end

      it "favorite_genreが空でも登録できる" do
        @profile.favorite_genre = ""
        expect(@profile).to be_valid
      end

      it "favorite_book1が空でも登録できる" do
      end

      it "favorite_book2が空でも登録できる" do
      end

      it "favorite_book3が空でも登録できる" do
      end

      it "favorite_author1が空でも登録できる" do
      end

      it "favorite_author2が空でも登録できる" do
      end

      it "favorite_author3が空でも登録できる" do
      end

      it "birth_dateが空でも登録できる" do
      end
    end

    context "新規登録できない場合" do
      it "userが紐づいていないと登録できない" do
      end
    end
  end
end
