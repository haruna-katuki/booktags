class ProfilesController < ApplicationController
  before_action :current_user_set, only: [:new, :create, :edit, :update, :destroy]
  before_action :profile_set, only: [:edit, :update, :destroy]
  before_action :user_self, only: [:edit, :update, :destroy]

  def index
    @user = User.find(params[:user_id])
    @profile = @user.profile
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to profiles_path(user_id: @user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to profiles_path(user_id: @user)
    else
      render :edit
    end
  end

  def destroy
    @profile.destroy
    redirect_to profiles_path(user_id: @user)
  end

  private

  def current_user_set
    @user = current_user
  end

  def profile_params
    params.require(:profile).permit(:favorite_genre, :favorite_book1, :favorite_book2, :favorite_book3,
                                    :favorite_author1, :favorite_author2, :favorite_author3, :birth_date).merge(user_id: current_user.id)
  end

  def profile_set
    @profile = Profile.find(params[:id])
  end

  def user_self
    unless user_signed_in? && current_user.id == @profile.user_id
      redirect_to root_path
    end
  end
end
