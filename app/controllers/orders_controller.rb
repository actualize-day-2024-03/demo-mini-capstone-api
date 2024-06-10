class OrdersController < ApplicationController
  before_action :authenticate_user
  
  def index
    # alternate syntax not using has_many 
    # @orders = Order.where(user_id: current_user.id)    
    @orders = current_user.orders
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
      # alternate syntax instead of if statement
      # @order = Order.find_by(id: params[:id], user_id: current_user.id)

      @order = Order.find_by(id: params[:id])
      if current_user.id == @order.user_id
        render :show
      else
        render json: {}
      end
    end
  
end
