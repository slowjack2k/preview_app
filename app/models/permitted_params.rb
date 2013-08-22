class PermittedParams < Struct.new(:params)
  def user
    permitted = [:login, :password]
    params.require(:user).permit(*permitted)
  end

  def session
    permitted = [:login, :password]
    params.require(:session).permit(*permitted)
  end

  def gadget
    permitted = [:name]
    params.require(:gadget).permit(*permitted)
  end
end