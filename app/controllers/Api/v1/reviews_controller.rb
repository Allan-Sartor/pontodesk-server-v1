class Api::V1::ReviewsController < ApiController
  before_action :authenticate_user!
  before_action :set_review, only: %i[ show update destroy ]

  # GET /reviews
  def index
    @reviews = Review.all

    render json: @reviews
  end

  # GET /reviews/1
  def show
    render json: { review: @review }
  end

  # POST /reviews
  def create
    @review = current_user.review.new(review_params)

    if @review.save
      render json: @review, status: :created
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reviews/1
  def update
    if @review.update(review_params)
      render json: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reviews/1
  def destroy
    @review.destroy
  end

  private

    def set_review
      @review = current_user.review.find(params[:id])
    end

    def review_params
      params.permit(:title, :description, :score, :call_id)
    end
end
