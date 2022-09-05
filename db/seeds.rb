puts "Creating restaurants"

Restaurant.create(
  name: "Il Forno",
  city: "Medellin",
  image_url: "https://images.unsplash.com/photo-1585238342024-78d387f4a707?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
  phone_number: "+576045623",
  address: "Unicentro Medellin",
  type_food: "Italiana"
)

Restaurant.create(
  name: "Crepes & Waffles",
  city: "Medellin",
  image_url: "https://images.unsplash.com/photo-1602532769069-0e856a643e7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
  phone_number: "+5760478965",
  address: "Unicentro Medellin",
  type_food: "Heladeria"
)

puts "Ok..."
