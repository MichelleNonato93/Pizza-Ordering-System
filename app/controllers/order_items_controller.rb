class OrderItemsController < ApplicationController

  def create
    @order = current_order
    @item = @order.order_items.new(item_params)
    @order.save
    session[:order_id] = @order.id
    redirect_to orderpage_path
  end

  def destroy
  	@item = OrderItem.find(params[:id])
  	@item.destroy
  	redirect_to cart_path
  end

  private

  def item_params
    params.require(:order_item).permit(:order_id, :quantity, :variant_id, :total)
  end

end