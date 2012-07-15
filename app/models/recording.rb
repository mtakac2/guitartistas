class Recording < ActiveRecord::Base
  attr_accessible :description, :title, :url

  validates_presence_of :title, :url
  validates_uniqueness_of :title
end
