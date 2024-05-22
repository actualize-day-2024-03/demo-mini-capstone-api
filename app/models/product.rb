class Product < ApplicationRecord
  # product only has 1 supplier
  def supplier
    # find 'my' supplier_id and find that value in the suppliers table
    Supplier.find_by(id: supplier_id)
  end
end
