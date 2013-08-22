class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new permitted_params.user

    if @user.save
      @message = "Account was successfully created."
    else
      @message = @user.errors.full_messages.join("\n")
    end
  end
end
