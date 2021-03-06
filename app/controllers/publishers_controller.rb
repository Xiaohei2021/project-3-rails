class PublishersController < ApplicationController
    before_action :redirect_if_not_logged_in
    before_action :find_publisher, only: [:show, :edit, :update, :destroy]

    def index 
        @publishers = Publisher.all
    end

    def show
    end


    def new
        @publisher = Publisher.new
    end

    def create
    
        @publisher = Publisher.new(publisher_params)
       
        if @publisher.save
            redirect_to publishers_path
        else
            render :new
        end
    end

    def edit
       
    end

    def update
        if @publisher.valid?
            @publisher.update(publisher_params)
            redirect_to publisher_path(@publisher)
        else
            render :edit
        end
    end

    def destroy
        @publisher.destroy
        redirect_to publishers_path
    end
    

    private

    def publisher_params
        params.require(:publisher).permit(:name, :founded, :based_in, :awards, game_attributes: [:title, :genre, :esrb_rating, :platform])
    end

    def find_publisher
        @publisher = Publisher.find(params[:id])
    end
end
