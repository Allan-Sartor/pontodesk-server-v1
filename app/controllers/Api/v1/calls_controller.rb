class Api::V1::CallsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_call, only: %i[ show update destroy ]

  # GET /calls
  def index
    @calls = current_user.call.all

    render json: @calls
  end

  # GET /calls/1
  def show
    render json: @call
  end

  # POST /calls
  def create
    @call = current_user.call.new(call_params)

    if @call.save
      render json: { call: @call, user: current_user }, status: :created
    else
      render json: @call.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /calls/1
  def update
    if @call.update(call_params)
      render json: @call
    else
      render json: @call.errors, status: :unprocessable_entity
    end
  end

  # DELETE /calls/1
  def destroy
    @call.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_call
      @call = current_user.call.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def call_params
      params.permit(:priority_level, :anydesk_number, :description, :image_url, :call_status)
    end
end
