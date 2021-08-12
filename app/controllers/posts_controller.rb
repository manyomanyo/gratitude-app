class PostsController < ApplicationController
  def index
    @admin = Admin.all
    @user = User.all
  end
end
