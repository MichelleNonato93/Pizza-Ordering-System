class Product < ActiveRecord::Base
	has_many :variants

	validates_presence_of :name, :category
end