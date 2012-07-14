class Biography < ActiveRecord::Base
  attr_accessible :content, :image, :slug, :title

  validates_presence_of   :title, :content
  validates_uniqueness_of :title

  before_save :create_slug, :downcase_slug

  mount_uploader :image, AvatarUploader

  def create_slug 
    if self.slug.blank?
      self.slug = self.title.split.join('-')
    end    
  end

  def downcase_slug
    self.slug = self.slug.downcase
  end
end
