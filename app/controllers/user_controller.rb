class UserController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :find_, only: [:destroy, :show]

  def index
    user = User.select("id, username, uemail")
    if user.present?
      render json: user, status: :ok
    else
      render json: {
        message: "data not found"
      }, status: :unprocessable_entity
  end
end

  def show
    if @user.present?
      render json: @user, status: :ok
    else
      render json: {
        data: 'user not found'
      }, status: :unprocessable_entity
    end
  end

  def destroy
    if @user
      @user.destroy!
      render json: {
        message: "success deleted user"
      }, status: :ok
    else
      render json: {
        message: "failed deleted user"
      }, status: :unprocessable_entity
    end
  end

  def create
    binding.pry
    user = User.new(user_params)
    if user.save
      render json: {
        message: "success inserted"
      }, status: :ok
    else
      render json: {
        message: "failed inserted"
      }, status: :unprocessable_entity
    end
  end

    private

    def find_user
      @user = User.find_by(id: params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :description)
    end

  end
