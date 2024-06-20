class Category < ApplicationRecord
  has_many :category_products
  has_many :products, through: :category_products
  
  
  # explain this again
  # category_products
  # def products
  #   final = []
  #   # cps = CategoryProduct.where(category_id: id)
  #   # cps.each do |cp|
  #   #   final << Product.find_by(id: cp.product_id)
  #   # end
  #   category_products.each do |cp|
  #     final << cp.product
  #   end
  #   final
  # end
end
