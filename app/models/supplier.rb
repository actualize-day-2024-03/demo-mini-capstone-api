class Supplier < ApplicationRecord
  # find all the products for this supplier
  # find 'my' id, go to products table
  # find allll the products that have my id
  has_many :products
  
  # def products
  #   Product.where(supplier_id: id)
  # end
end
