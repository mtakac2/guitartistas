class Album < ActiveRecord::Base
  attr_accessible :description, :title, :cover_photo_id, :slug  
  
  has_many :photos, :dependent => :destroy

  validates_presence_of   :title
  validates_uniqueness_of :title

  def get_cover_photo
    cover_photo = self.photos.find_by_id self.cover_photo_id
    if cover_photo.nil?
      cover_photo = self.photos.first
    end
    cover_photo
  end

  def create_slug
    title.downcase.split.join('-')
  end
end