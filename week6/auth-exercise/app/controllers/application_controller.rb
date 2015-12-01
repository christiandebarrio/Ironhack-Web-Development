class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    #Memoization
    @current_user ||= User.find_by_id(session[:user_id])
    # @current_user = @current.user || User.find_by_id(sessions[:user_id])

  end

  def authorize_user
    unless current_user
      flash[:message] = 'Please log in or register to access this page'
      redirect_to('/login')
    end
  end
end
