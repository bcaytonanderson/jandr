class Site < ActiveRecord::Base
  belongs_to :user
  has_many :groups
  has_many :images, as: :imageable
end
