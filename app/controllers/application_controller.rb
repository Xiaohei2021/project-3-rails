class ApplicationController < ActionController::Base
    include ApplicationHelper
    
    rescue_from ActiveRecord::RecordNotFound, with: :element_not_found

    private
    def redirect_if_not_logged_in
        redirect_to '/' if !logged_in?
    end 

    def element_not_found(error)
        # byebug
        @error_hint = error.message
        render :"layouts/error_page" 
        # redirect_to :publishers, notice: "Object not found: #{@error_hint}"
    end


   
end
