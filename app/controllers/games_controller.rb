class GamesController < ApplicationController
    before_action :redirect_if_not_registered

    def index 
        @games = Game.all
    end

    def show
        @game =  Game.find_by_id(params[:id])
    end


    def new
        @game = Game.new
    end

    def create
        # byebug
        # binding.pry
        @game = Game.new(game_params)
        if @game.save
            redirect_to games_path
        else
            render :new
        end
    end



    private
    
    def game_params
        params.require(:game).permit(:title, :genre, :publisher_id, publisher_attribute: [:name, :formation, :based_in, :awards ])
    end
end
