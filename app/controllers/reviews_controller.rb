class ReviewsController < ApplicationController
    before_action :find_review, only: [:edit, :update, :destroy]

    def index
        @reviews = Review.all
    end

    def new
        @review = Review.new
    end

    def show
    end

    def create
    end

    def edit
    end

    # def update
    #     @review.update
    #     redirect_to :review_path(@review)
    # end

    # def destroy
    #     @review.destroy
    #     redirect_to :reviews_path
    # end

    private

    def review_params
        params.permit(:review).require(:game_id, :user_id, :content, :rating)
    end

    def find_review
        @review = Review.find(params[:id])
    end
end
