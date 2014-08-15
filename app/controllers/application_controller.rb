class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #before_action :authenticate_user!
  before_action lambda{ authenticate_user!}
  protect_from_forgery with: :null_session

end
