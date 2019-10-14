class OrdersController < ApplicationController
  def index
    @orders = Order.page(params[:page]).reverse_order
  end

  def new
    @order = Oder.new
  end

  def create
    @order = Order.new(order_params)
    @order.user_id = current_user.id
    @order.save
  end

  private
  def order_params
    params.require(:order).permit(:payment_method, :total_price, :shipping_status, :shipping_name, :shipping_address, :shipping_price)
end
