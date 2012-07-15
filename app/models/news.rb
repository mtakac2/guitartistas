class News < ActiveRecord::Base
  attr_accessible :content, :title

  validates_presence_of   :title, :content
  validates_uniqueness_of :title
end
