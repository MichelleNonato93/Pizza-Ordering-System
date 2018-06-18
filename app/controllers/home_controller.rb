class HomeController < ApplicationController

	before_action :authenticate_user!

	def index
		@order_item = current_order.order_items.new
		@running_total = current_order.order_items.sum(:total)
	end

end