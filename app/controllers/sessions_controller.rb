class SessionsController < ApplicationController
  def new

  end

  def create

    user = User.find(:first, :conditions => {login: params[:session][:login]})


  end

  def destroy
  end
end
