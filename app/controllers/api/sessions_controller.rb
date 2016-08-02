class Api::SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )
    if @user
      @current_user = @user
      render json: @user
    else
      render json: ['Invalid credentials'], status: 401
    end
  end

  def destroy
    if @current_user
      @current_user = nil
      render json: {}
    else
      render json: ['Not logged in'], status: 404
    end
  end
end
