class AdminController < ApplicationController
  def index
    @username = User.find_by_id(session[:user_id]).first_name
  end
end
