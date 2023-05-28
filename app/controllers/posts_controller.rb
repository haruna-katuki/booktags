class PostsController < ApplicationController
  def index
  end

  def new
    @user = current_user
  end

  def create
  end
end
