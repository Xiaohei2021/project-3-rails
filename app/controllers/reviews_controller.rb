class ReviewsController < ApplicationController
    before_action :redirect_if_not_registered
    
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
       else
            render :new
       end
    end

    def show
        @review = Review.find_by(id: params[:id])                
    end


    private
    
    def review_params
        params.require(:review).permit(:comment, :game_id )
    end

end
