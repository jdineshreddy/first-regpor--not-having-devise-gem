class Image < ActiveRecord::Base

  belongs_to :book
  mount_uploader :img, ImageUploader
  crop_uploaded :img

  validates :img, presence: true

end
