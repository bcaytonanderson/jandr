class Group < ActiveRecord::Base
  has_many :contents
  belongs_to :site
end
