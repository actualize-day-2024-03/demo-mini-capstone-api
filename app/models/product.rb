class Product < ApplicationRecord
  # product only has 1 supplier
  belongs_to :supplier
  has_many :images
  has_many :orders
  
  # def supplier
  #   # find 'my' supplier_id and find that value in the suppliers table
  #   Supplier.find_by(id: supplier_id)
  # end
end
