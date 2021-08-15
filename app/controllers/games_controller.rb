class GamesController < ApplicationController
    before_action :redirect_if_not_registered
    before_action :find_game, only: [:show, :update, :edit, :destroy]

    def index 

        @games = Game.order_by_esrb_rating
    end

    def show
    end

    def new
        @game = Game.new
        @game.build_publisher
    end

    def create

        @game = Game.new(game_params)
        
        if @game.save
            redirect_to games_path
        else
            render :new
        end
    end

    def edit

    end

    def update
        if @game.valid?
            @game.update(game_params)
            redirect_to game_path(@game)
        else
            render :edit
        end
    end

    def destroy
        @game.destroy
        redirect_to games_path
    end



    private
    
    def game_params
        params.require(:game).permit(:title, :genre, :esrb_rating, :platform, :publisher_id, publisher_attributes: [:name, :formation, :based_in, :awards])
    end

    def find_game
        @game = Game.find_by_id(params[:id])
    end
end
