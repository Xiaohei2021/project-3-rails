class ReviewsController < ApplicationController
    def new

    end

    def show
        @review = Review.find(params[:id])
    end
end
