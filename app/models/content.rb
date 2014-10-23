class Content < ActiveRecord::Base
  belongs_to :group
  has_many :images, as: :imageable
end
