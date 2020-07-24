class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]
  def show
    authorize @user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    User.save
  end

  def edit
    authorize @user
  end

  def update
    authorize @user
  end

  def destroy
    @user.destroy
  end
end
