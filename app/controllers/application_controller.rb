class ApplicationController < ActionController::Base
    include ApplicationHelper
   
    private
    def redirect_if_not_registered
        redirect_to '/' if !registered?
    end 
end
