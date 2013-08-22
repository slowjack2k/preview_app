class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new permitted_params.user

    if @user.save
      session[:current_user] = @user.id
      @message = "Account was successfully created."
    else
      @message = @user.errors.full_messages.join("\n")
    end
  end

  def destroy
    session[:current_user] = nil
    reset_session
  end

end
