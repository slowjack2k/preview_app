class GadgetsController < ApplicationController
  before_filter :get_user

  def new
    @gadget = Gadget.new(:user => @user)
  end

  def create
    @gadget = @user.gadgets.build(permitted_params.gadget)

    if @gadget.save
      @message = "Gadget was successfully created."
    else
      @message = @gadget.errors.full_messages.join("\n")
    end
  end

  protected

  def get_user
    @user = User.find( params[:user_id] )
  end
end
