class Group < ActiveRecord::Base
  has_many :contents
  belongs_to :site
  has_many :images, as: :imageable
end
