class ProfilesController < ApplicationController
  before_action :user_set, only: [:index, :new, :create, :edit, :update]
  before_action :profile_set, only: [:edit, :update]

  def index
    @profile = @user.profile
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

  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to profiles_path
    else
      render :edit
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

  def profile_set
    @profile = Profile.find(params[:id])
  end
end
