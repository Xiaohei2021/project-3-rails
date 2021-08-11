class ApplicationController < ActionController::Base
    def current_user
        @current_user ||= User.find_by_id(session[:user_id])
    end

    def registered?
        !!current_user
    end


end
