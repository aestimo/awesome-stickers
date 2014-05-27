class Sticker < ActiveRecord::Base
  require 'carrierwave/orm/activerecord'

  # before_save PhotoUploader::extension_white_list

  # use carrierwave to upload photos of the sticker
  mount_uploader :photo, PhotoUploader
end
