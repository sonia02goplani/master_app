class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  def my_app
  	render html: " Hey!!! welcome to this app"
  end
  include SessionsHelper
end
