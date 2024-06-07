class OrdersController < ApplicationController
  def create
    @order = Order.new(
      product_id: 7, 
      user_id: 3, 
      quantity: 1, 
      subtotal: 9, 
      tax: 0.81, 
      total: 9.81
    )
    @order.save
    render :show
  end
end
