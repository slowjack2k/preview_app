class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new permitted_params.user

    if @user.save
      @message = "Account was successfully created."
    else
      @message = "Failure in sign up"
    end
  end
end
