# encoding: UTF-8
class SessionsController < ApplicationController
  skip_before_filter :authorize_root
  skip_before_filter :authorize, :only => [:new, :create]
  
  def new
  end

  def create
    if user = User.authenticate(params[:login], params[:password])
      session[:user_id] = user.id
      if user.is_root
        redirect_to admin_url
      else
        redirect_to root_url
      end
    else
      redirect_to login_url, :alert => "Пара логин/пароль неверна."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, :notice => "Вы вышли из системы."
  end
end
