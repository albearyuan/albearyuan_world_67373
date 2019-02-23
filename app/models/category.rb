class Category < ApplicationRecord
	has_many :photos
	has_one :category

	scope :active, 			 -> { where('active = ?', true) }
  scope :alphabetical, -> { order('name') }
  
end
