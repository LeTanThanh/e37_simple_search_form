class UsersController < ApplicationController
  def index
    @users = User.search(params[:search]).page(params[:page]).per 20
  end
end
