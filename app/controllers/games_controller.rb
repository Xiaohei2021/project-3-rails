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
        @game = Game.find_by_id(params[:id])
    end

    def update
        @game = Game.find_by_id(params[:id])
        if @game.valid?
            @game.update(game_params)
            redirect_to game_path(@game)
        end
    end


    def destroy
        @game.destroy
        redirect_to games_path
    end



    private
    
    def game_params
        params.require(:game).permit(:title, :genre, :publisher_id, publisher_attributes: [:name, :formation, :based_in, :awards])
    end
end
