class Gadget < ActiveRecord::Base
  belongs_to :user
  mount_uploader :gadget_picture, GadgetPictureUploader
end
