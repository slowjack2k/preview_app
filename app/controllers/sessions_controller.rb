class SessionsController < ApplicationController
  def new

  end

  def create

    user = User.find(:first, :conditions => {login: permitted_params.user[:login]})

    if user
    else
    end
  end

  def destroy
  end
end
