class PermittedParams < Struct.new(:params)
  def user
    permitted = [:login, :password]
    params.require(:user).permit(*permitted)
  end
end