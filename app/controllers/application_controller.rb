# encoding: UTF-8
class ApplicationController < ActionController::Base
  before_filter :authorize
  before_filter :authorize_root
  protect_from_forgery
  
  protected
  def authorize
    unless User.find_by_id(session[:user_id])
      redirect_to login_url, :notice => "Пожалуйста залогиньтесь."
    end
  end
  
  def authorize_root
    if user = User.find_by_id(session[:user_id])
      unless user.is_root
        redirect_to :back, :notice => "У вас нет прав администратора."
      end
    else
      redirect_to login_url, :notice => "Пожалуйста залогиньтесь."
    end
  end
end
