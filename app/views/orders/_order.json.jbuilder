json.id order.id
json.user_id order.user_id
json.subtotal order.subtotal
json.tax order.tax
json.total order.total
json.carted_products order.carted_products.map do |carted_product|
  json.quantity carted_product.quantity
  json.product carted_product.product
end