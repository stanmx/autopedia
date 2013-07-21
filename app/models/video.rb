class Video < ActiveRecord::Base
  attr_accessible :description, :title, :video

  validates_presence_of :title, :video, :description
end
