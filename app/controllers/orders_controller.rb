class OrdersController < ApplicationController
  def index
    @orders = Order.all
    render :index
  end
  
  def create
    # user enters product id
    # user enters quantity
    # we figure everything else out
    product = Product.find_by(id: params[:product_id])
    tax_rate = 0.09
    calculated_subtotal = params[:quantity].to_i * product.price
    calculated_tax = (params[:quantity].to_i * product.price) * tax_rate
    calculated_total = (params[:quantity].to_i * product.price) + ((params[:quantity].to_i * product.price) * tax_rate)
    
    @order = Order.new(
      product_id: params[:product_id],
      user_id: current_user.id,
      quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
      )
      @order.save
      render :show
    end

    def show
      @order = Order.find_by(id: params[:id])
      render :show
    end
  
end
