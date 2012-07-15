class Event < ActiveRecord::Base
  attr_accessible :description, :image, :start_time, :title

  validates_presence_of :title

  mount_uploader :image, EventImageUploader
end
