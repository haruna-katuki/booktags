class ProfilesController < ApplicationController
  before_action :user_set, only: [:index, :new]

  def index
  end

  def new
    @profile = Profile.new
  end

  def create
  end

  private

  def user_set
    @user = current_user
  end
end
