class ProductsController < ApplicationController
  def index
    # get data from db then render to user
    @products = Product.all
    render template: "products/index"
  end

  def show
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    render template: "products/show"
  end
end
