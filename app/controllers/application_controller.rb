class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?, :is_friend?, :is_owned?

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def logged_in?
    current_user != nil
  end

  def is_friend?(user)
    if logged_in?
      if current_user.friends.include?(user)
        return true
      else
        false
      end
    end
  end

  def is_owned?(game)
    if current_user.games.include?(game)
      return true
    else
      false
    end
  end



end
