class PermittedParams < Struct.new(:params)
  def user
    permitted = [:login, :password]
    params.require(:user).permit(*permitted)
  end

  def session
    permitted = [:login, :password]
    params.require(:session).permit(*permitted)
  end
end