class User < ActiveRecord::Base
  has_many :gadgets

  validates :login, uniqueness: true
end
