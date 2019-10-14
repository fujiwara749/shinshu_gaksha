class OrderItemsController < ApplicationController
  def new
    @order_item = OrderItem.new
  end

  def create
    @order_item = OderItem.new(item_params)
  end

  def index
    @order_items = OrderItem.all
  end

  private
  def order_item_params
    params.require(:order_item).permit(:order_price, :order_amount)
end
