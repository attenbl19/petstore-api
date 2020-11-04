class ReviewsController < ApplicationController
  before_action :authorized, only: [:create, :update, :destroy]

  # GET /reviews
  def index
    @reviews = Review.all

    render json: @reviews
  end

  # # GET /reviews/1
  # def show
  #   render json: @review
  # end

  # POST /reviews
  def create
  @review = @user.review.create(review_params) 
  render json: @review
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
    # Only allow a trusted parameter "white list" through.
    def review_params
      params.permit(:title, :description, :score, :businesses_id, :users_id)
    end
end





