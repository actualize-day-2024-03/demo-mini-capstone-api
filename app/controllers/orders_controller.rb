class OrdersController < ApplicationController
  before_action :authenticate_user
  
  def index
    # alternate syntax not using has_many 
    # @orders = Order.where(user_id: current_user.id)    
    @orders = current_user.orders
    render :index
  end
  
  def create
    # items in current user's shopping cart
    calculated_subtotal = 0
    carted_products = CartedProduct.where(user_id: current_user.id, status: 'carted')
    # loop through each item. find price, find quantity, multiply them, add to sum
    # 170 => 170 * 1
    # 540 => 270 * 2
    carted_products.each do |cp|
      calculated_subtotal += cp.quantity * cp.product.price
    end

    p calculated_subtotal
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax
    p calculated_tax
    p calculated_total
    
    
    @order = Order.new(
      user_id: current_user.id, 
      subtotal: calculated_subtotal, 
      tax: calculated_tax, 
      total: calculated_total
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
