class Product < ApplicationRecord
  # product only has 1 supplier
  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products

  def images_with_default
    # show all the images unless it doesn't have any
    if images.length > 0
      return images
      else
        # if it doesn't ahve any, set a default image
        return [{url: 'https://t3.ftcdn.net/jpg/02/48/42/64/360_F_248426448_NVKLywWqArG2ADUxDq6QprtIzsF82dMF.jpg'}]
     end
  end
  
  # def supplier
  #   # find 'my' supplier_id and find that value in the suppliers table
  #   Supplier.find_by(id: supplier_id)
  # end
end
