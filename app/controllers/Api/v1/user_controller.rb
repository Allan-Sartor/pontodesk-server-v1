class Api::V1::UserController < ApiController
  before_action :authenticate_user!
  before_action :set_user_params, only: %i[ show ]

  def index
    users = User.all

    render json: { users: users }, status: :ok
  end

  def show
    render json: @user_find, status: :ok
  end

  private

  def set_user_params
    @user_find = User.find(params[:id])
  end
end  