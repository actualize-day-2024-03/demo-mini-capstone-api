class OrdersController < ApplicationController
  def index
    @orders = Order.all
    render :index
  end
  
  def create
    @order = Order.new(
      product_id: params[:product_id],
      user_id: params[:user_id],
      quantity: params[:quantity],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total],
      )
      @order.save
      render :show
    end

    def show
      @order = Order.find_by(id: params[:id])
      render :show
    end
  
end
