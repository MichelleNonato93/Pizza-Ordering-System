class Variant < ActiveRecord::Base
	belongs_to :product

	validates_presence_of :size, :price
end