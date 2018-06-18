class OrdersController < ApplicationController

	def update
		@order = Order.find(params[:id])
		@order.update_attributes(order_params)
		redirect_to admin_path
	end

	def order_params
		params.require(:order).permit(:status)
	end


end