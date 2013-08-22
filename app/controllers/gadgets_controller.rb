class GadgetsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @gadget = Gadget.new(:user => @user)
  end

  def create

  end
end
