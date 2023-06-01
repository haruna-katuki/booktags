class ProfilesController < ApplicationController
  before_action :user_set, only: [:index, :new, :create]

  def index
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to action: :index
    else
      render :new
    end
  end

  private

  def user_set
    @user = current_user
  end

  def profile_params
    params.require(:profile).permit(:favorite_genre, :favorite_book1, :favorite_book2, :favorite_book3,
                                    :favorite_author1, :favorite_author2, :favorite_author3, :birth_date).merge(user_id: current_user.id)
  end
end
