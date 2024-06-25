class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?
  
    before_action :require_login
  
    private
  
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
  
    def logged_in?
      !!current_user
    end
  
    def require_login
      unless current_user
        redirect_to login_path, alert: "You must be logged in to access this section"
      end
    end
end
  