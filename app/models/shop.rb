class Shop < ActiveRecord::Base
  validates :name, :presence => true
end
