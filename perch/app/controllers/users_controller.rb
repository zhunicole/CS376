class UsersController < ApplicationController
  def login
  end

  def login_submit
    user = User.find_by_username(params[:username])
    if user == nil
      user = User.create(:username => params[:username])
    end
    session[:signed_in_user] = user.id
    redirect_to "/posts"
  end

  def sign_out
    session[:signed_in_user] = nil
    redirect_to :action => "login"
  end
end
