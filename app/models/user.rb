class User < ActiveRecord::Base
  has_many :gadgets

  validates :login, uniqueness: true

  def authenticate(password)
    self.password == password #ToDo encrypt password
  end

end
