class PublishersController < ApplicationController

    def index 
        @publishers = Publisher.all
    end

    def show
        @publisher =  Publisher.find_by_id(params[:id])
    end


    def new
        @publisher = Publisher.new
    end

    def create
        # byebug
        # binding.pry
        @publisher = Publisher.new(publisher_params)
        if @publisher.save
            redirect_to publishers_path
        else
            render :new
        end
    end



    private
    
    def publisher_params
        params.require(:publisher).permit(:name, :formation, :publisher_id, publisher_attribute: [:name, :formation, :based_in, :awards ])
    end
end
