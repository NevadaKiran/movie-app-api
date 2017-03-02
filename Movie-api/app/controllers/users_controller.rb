class UsersController < ApplicationController

  def login
    user = User.find_by(email: params[:user][:email])

    if user && user.authenticate(params[:user][:password])
      render json: {status: 201, user: user}
    else
      render json: {status: 401, message: "unauthorized"}
    end
  end

  def index
    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: {status: 200, message: "ok"}
    else
      render json: {status: 422, user: user.errors}
    end
  end

  def update
      user = User.find(params[:id])
    if user.update(user_params)
      render json: user
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    User.find(params[:id]).destroy

    render json: {status: 204}
  end

  private

  def user_params
      params.require(:user).permit(:name, :email, :password)
  end
end
