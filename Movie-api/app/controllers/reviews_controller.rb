class ReviewsController < ApplicationController


  def index
        render json: Review.all
      end

      def show
        render json: Review.find(params[:id])
      end

      def create
        review = Review.new(review_params)

        if review.save
          render json: review, status: :created, location: review
        else
          render json: review.errors, status: :unprocessable_entity
        end
      end

      def update
        review = Review.find(params[:id])
        if review.update(review_params)
          render json: review
        else
          render json: review.errors, status: :unprocessable_entity
        end
      end

      def destroy
        Review.find(params[:id]).destroy

        render json: {status: 204}
      end

      private

        def review_params
          params.require(:review).permit(:rating, :comments)
        end
    end
