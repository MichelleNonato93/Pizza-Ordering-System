class AdminController < ApplicationController

	before_action :authenticate_user!

	def index
		@orders = Order.where(status: "pending")
	end

end