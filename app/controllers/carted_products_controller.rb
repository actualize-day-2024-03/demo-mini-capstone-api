class CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.new(
      user_id: params[:user_id],
      product_id: params[:product_id],
      status: params[:status],
      order_id: params[:order_id],
      quantity: params[:quantity],      
    )
    @carted_product.save
    render :show
  end
end
