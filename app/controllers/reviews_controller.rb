class ReviewsController < ApplicationController
    before_action :redirect_if_not_registered
    before_action :find_review, only: [:show, :destroy]

    def index
        if params[:game_id] && @game = Game.find_by_id(params[:game_id])
            @reviews = @game.reviews
        else
            @reviews = Review.all
        end
    end


    def show
    end

    def new
        @game = Game.find_by_id(params[:game_id])
        #   byebug
        @review = @game.reviews.build

    end

    def create
      
    @game = Game.find_by_id(params[:game_id])
       @review = Review.new(review_params)
       @review.user = current_user

        #  byebug
       if @review.save
            redirect_to game_review_path(@game, @review)
            #redirect_to game_path(@game)
       else
            render :new
       end
    end


    def destroy
        @review.destroy
        redirect_to reviews_path
    end


    private
    
    def review_params
        params.require(:review).permit(:props, :pro_comment, :boos, :con_comment, :game_id )
    end

    def find_review
        @review = Review.find_by(id: params[:id])                

    end

end
