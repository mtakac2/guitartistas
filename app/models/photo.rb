class Photo < ActiveRecord::Base
  attr_accessible :album_id, :caption, :image, :title

  belongs_to :album

  mount_uploader :image, PhotoUploader

  validates_presence_of :title, :image, :album_id
end