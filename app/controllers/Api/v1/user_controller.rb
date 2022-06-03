class Api::V1::UserController < ApiController
  before_action :authenticate_user!
  before_action :set_user_params, only: %i[ show ]
  include Paginable

  def index
    @users = User.page(current_page).per(per_page)

    render json: { users: @users, pagination: meta_options }, status: :ok
  end

  def show
    render json: @user_find, status: :ok
  end

  private

  def set_user_params
    @user_find = User.find(params[:id])
  end

  def meta_options
    @meta_options ||= { meta: meta_attributes(@users) }
  end
end  