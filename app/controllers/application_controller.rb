class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  
  def after_sign_in_path_for(resource)
  	puts "$" * 100
  	puts "$" * 100
    #redirect to new trip page after log in
    new_member_trip_path(current_member)
  end
end
