class ProductsController < ApplicationController
  def index
    # get data from db then render to user
    @products = Product.all
    render template: "products/index"
  end

  def show
    @product = Product.second
    render template: "products/show"
  end
end
