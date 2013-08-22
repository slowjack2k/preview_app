class SessionsController < ApplicationController
  def new

  end

  def create

    user = User.find(:first, :conditions => {login: permitted_params.session[:login]})

    if user && user.authenticate(permitted_params.session[:password])
      @message = "You have been successfully signin"
    else
      @message = "You have not been successfully signin"
    end
  end

  def destroy
  end
end
