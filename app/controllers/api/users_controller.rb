class Api::UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render json: @user.errors.full_messages
    end
  end

  def show
    @user = User.find_by(params[:id])
    render json: @user
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
