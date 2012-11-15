class Status < ActiveRecord::Base
  attr_accessible :content, :name
  validates :name,  :presence => true
end
