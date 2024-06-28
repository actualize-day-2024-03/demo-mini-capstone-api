User.create!([
  {name: "bob", email: "bob@email.com", password_digest: "$2a$12$NtSOuzOStDQp2ogNhANDze.KB2xt1RSsZGN5hRbT3Sot3uKZX6bA2", admin: nil},
  {name: "roberta", email: "roberta@email.com", password_digest: "$2a$12$2uvo4LN05q6CplxElQaW6u1.Bjhdi7wL9hyGXjtEadzyIreWCB72q", admin: nil},
  {name: "anne", email: "anne@email.com", password_digest: "$2a$12$mBIp1EFLDL4oXhpnZr7fBebgmQbC9465vxOsxzhGIO.df.bjzatZ.", admin: true},
  {name: "james", email: "james@email.com", password_digest: "$2a$12$KIpX.LDqyYR1hgOAYAJ7EuPvUndB5rAdonq6DrD.RwFjhDMbnUmXe", admin: nil},
  {name: "mr bootstrap", email: "boots@email.com", password_digest: "$2a$12$21t9WaeJpJPw.c6W/L22CeWJP6/CpIS9cmU21lFvDL902DEhLY2vW", admin: nil}
])
Supplier.create!([
  {name: "amazon", email: "amazon@email.com", phone_number: "5678987654678"},
  {name: "nike", email: "nike@info.com", phone_number: "444444444"},
  {name: "target", email: "target@email.com", phone_number: "11111111"},
  {name: "bed bath and beyond", email: "bb&b@email.com", phone_number: "2222222222"}
])
Product.create!([
  {name: "Lightsaber", price: 270, description: "Part laser, part samurai sword, all awesome. The lightsaber is an elegant weapon for a more civilized age, not nearly as clumsy as a blaster", inventory: nil, supplier_id: nil},
  {name: "Space Cowboy Laser Gun", price: 170, description: "This weapon has no other description than, Shiney!", inventory: nil, supplier_id: nil},
  {name: "DnD Dice set", price: 57, description: "Take down mighty dragons with this timeless set of 20 sided wonders", inventory: nil, supplier_id: nil},
  {name: "Sonic Screwdriver", price: 9, description: "The Doctor's sciencey magic wand to get out of tight spots. Note: does not work on wood", inventory: nil, supplier_id: nil},
  {name: "Yoda sleeping bag", price: 40, description: "For real", inventory: nil, supplier_id: nil},
  {name: "WNYX Mug", price: 2, description: "Get your morning news once you wake up with a cup of joe from... well Joe. He made it with his homemade duct tape", inventory: nil, supplier_id: 3},
  {name: "Hitchhiker's Guide to the Galaxy", price: 42, description: "In many of the more relaxed civilizations on the Outer Eastern Rim of the Galaxy, the Hitch-Hiker's Guide has already supplanted the great Encyclopaedia Galactica as the standard repository of all knowledge and wisdom, for though it has many omissions and contains much that is apocryphal, or at least wildly inaccurate, it scores over the older, more pedestrian work in two important respects. First, it is slightly cheaper; and secondly it has the words DON'T PANIC inscribed in large friendly letters on its cover.", inventory: nil, supplier_id: 1},
  {name: "book", price: 12, description: "has pages", inventory: nil, supplier_id: 2},
  {name: nil, price: nil, description: nil, inventory: nil, supplier_id: 3},
  {name: "ben + jerry's ice cream", price: 7, description: "holds cold dessert", inventory: nil, supplier_id: 3},
  {name: "jump rope", price: 5, description: "jump over it", inventory: nil, supplier_id: 2},
  {name: "fork", price: 50, description: "gets food from plate to mouth", inventory: nil, supplier_id: nil},
  {name: "jump rope", price: 5, description: "jump over it", inventory: nil, supplier_id: 2},
  {name: "jump rope", price: 5, description: "jump over it", inventory: nil, supplier_id: 2},
  {name: nil, price: nil, description: nil, inventory: nil, supplier_id: nil},
  {name: nil, price: nil, description: nil, inventory: nil, supplier_id: nil},
  {name: nil, price: nil, description: nil, inventory: nil, supplier_id: nil},
  {name: "phone", price: nil, description: nil, inventory: nil, supplier_id: nil},
  {name: "fork", price: 50, description: "gets food from plate to mouth", inventory: nil, supplier_id: nil},
  {name: "fork", price: 2, description: nil, inventory: nil, supplier_id: nil},
  {name: "phone", price: nil, description: "makes calls", inventory: nil, supplier_id: nil},
  {name: "pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!pencil sharpener!!!!!", price: 12, description: "sharpens pencils", inventory: nil, supplier_id: 3}
])
Order.create!([
  {user_id: 2, subtotal: "90.0", tax: "8.1", total: "98.1"},
  {user_id: 3, subtotal: "9.0", tax: "0.81", total: "9.81"},
  {user_id: 3, subtotal: "9.0", tax: "0.81", total: "9.81"},
  {user_id: 3, subtotal: "9.0", tax: "0.81", total: "9.81"},
  {user_id: 3, subtotal: "9.0", tax: "0.81", total: "9.81"},
  {user_id: 1, subtotal: "240.0", tax: "21.6", total: "261.6"},
  {user_id: 1, subtotal: "240.0", tax: "21.6", total: "261.6"},
  {user_id: 1, subtotal: "240.0", tax: "21.6", total: "261.6"},
  {user_id: 2, subtotal: "240.0", tax: "21.6", total: "261.6"},
  {user_id: 2, subtotal: "120.0", tax: "21.6", total: "261.6"},
  {user_id: 2, subtotal: "120.0", tax: "10.8", total: "130.8"},
  {user_id: 2, subtotal: "120.0", tax: "10.8", total: "130.8"},
  {user_id: 1, subtotal: "540.0", tax: "48.6", total: "588.6"},
  {user_id: 3, subtotal: "710.0", tax: "63.9", total: "773.9"},
  {user_id: 3, subtotal: "710.0", tax: "63.9", total: "773.9"},
  {user_id: 3, subtotal: "710.0", tax: "63.9", total: "773.9"},
  {user_id: 3, subtotal: "710.0", tax: "63.9", total: "773.9"},
  {user_id: 3, subtotal: "710.0", tax: "63.9", total: "773.9"},
  {user_id: 3, subtotal: "880.0", tax: "79.2", total: "959.2"},
  {user_id: 3, subtotal: "880.0", tax: "79.2", total: "959.2"},
  {user_id: 3, subtotal: "1989.0", tax: "179.01", total: "2168.01"},
  {user_id: 3, subtotal: "1660.0", tax: "149.4", total: "1809.4"}
])
Image.create!([
  {url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7zGZ0NTWvg-G4I3pQXlmOMXZnVOzCfOufgJq8ItoEZQ&s", product_id: 6},
  {url: "https://ih1.redbubble.net/image.1136825685.6411/ur,mug_lifestyle,tall_portrait,750x1000.jpg", product_id: 2},
  {url: "https://d1vtxuzm7ofxrc.cloudfront.net/assets/the-teachers-lounge/ACM15993_4.jpg", product_id: 1}
])
Category.create!([
  {name: "battery powered"},
  {name: "space"},
  {name: "nerd"}
])
CategoryProduct.create!([
  {category_id: 2, product_id: 3},
  {category_id: 2, product_id: 4},
  {category_id: 2, product_id: 5},
  {category_id: 2, product_id: 7},
  {category_id: 3, product_id: 3},
  {category_id: 3, product_id: 17},
  {category_id: 1, product_id: 4},
  {category_id: 1, product_id: 16}
])
CartedProduct.create!([
  {user_id: 1, product_id: 4, status: "carted", order_id: nil, quantity: 2},
  {user_id: 1, product_id: 4, status: "carted", order_id: nil, quantity: 2},
  {user_id: 3, product_id: 4, status: "removed", order_id: nil, quantity: 2},
  {user_id: 3, product_id: 4, status: "purchased", order_id: 20, quantity: 2},
  {user_id: 3, product_id: 5, status: "purchased", order_id: 20, quantity: 2},
  {user_id: 3, product_id: 3, status: "removed", order_id: nil, quantity: 13},
  {user_id: 3, product_id: 19, status: "purchased", order_id: 21, quantity: 13},
  {user_id: 3, product_id: 2, status: "purchased", order_id: 21, quantity: 5},
  {user_id: 3, product_id: 8, status: "purchased", order_id: 21, quantity: 2},
  {user_id: 3, product_id: 3, status: "purchased", order_id: 21, quantity: 1},
  {user_id: 3, product_id: 4, status: "purchased", order_id: 21, quantity: 1},
  {user_id: 3, product_id: 4, status: "purchased", order_id: 21, quantity: 5},
  {user_id: 3, product_id: 1, status: "purchased", order_id: 21, quantity: 12},
  {user_id: 3, product_id: 13, status: "purchased", order_id: 21, quantity: 1},
  {user_id: 3, product_id: 4, status: "purchased", order_id: 22, quantity: 3},
  {user_id: 3, product_id: 5, status: "purchased", order_id: 22, quantity: 5},
  {user_id: 3, product_id: 4, status: "carted", order_id: nil, quantity: 4}
])
