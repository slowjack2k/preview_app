class User < ActiveRecord::Base
  has_many :gadgets

  validates :login, uniqueness: true

  def authenticate(password)
    true
  end

end
