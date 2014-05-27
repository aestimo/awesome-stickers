class Sticker < ActiveRecord::Base
  # use carrierwave to upload photos of the sticker
  mount_uploader :photo, PhotoUploader
end
