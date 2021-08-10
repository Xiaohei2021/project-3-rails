class GamesController < ApplicationController
    
    def index 
        @games = Game.all
    end

    def new
        @game = Game.new
    end

    def create
        # byebug
        # binding.pry
        @game = Game.new(game_params)
        if @game.save
            redirect_to game
        else
            render :new
        end
    end

    def show
        @game =  Game.find_by(params[:id])
    end


    private
    
    def game_params
        params.require(:game).permit(:title, :categories)
    end
end
