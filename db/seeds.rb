Restaurant.destroy_all 
Pizza.destroy_all 
RestaurantPizza.destroy_all 

# //Restaurant data 

puts "Seeding restaurants..." 

   r1 = Restaurant.create(name:"Pizza Inn", address: "TRM, Nairobi")
   r2 = Restaurant.create(name:"Dominos", address: "moi avenue, Thika")
   r3 = Restaurant.create(name:"Big square", address:" Nairobi" )
   r4 = Restaurant.create(name:"Pepinos", address: "Nairobi")
   r5 = Restaurant.create(name:"Big Square", address: "Kisumu")

puts "Seeding pizzas..." 

p1 = Pizza.create(name:"Cheese",ingredients:"Butter, Wheat, Cheese")
p2 = Pizza.create(name:"Vanilla",ingredients:"Dough, Milk, Vanilla")
p3 = Pizza.create(name:"Strawberry",ingredients:"Butter, Tomato, Strawberry")
p4 = Pizza.create(name:"Chocolate",ingredients:"Coconut, Milk, Chocolate")
p5 = Pizza.create(name:'Apple',ingredients:"Mango, Wheat, Apple") 

# //RestaurantPizza data 

puts "Seeding restaurant_pizza" 

RestaurantPizza.create(price:7, pizza_id:p1.id, restaurant_id:r3.id)
RestaurantPizza.create(price:9, pizza_id:p4.id, restaurant_id:r1.id)
RestaurantPizza.create(price:10, pizza_id:p3.id, restaurant_id:r4.id)
RestaurantPizza.create(price:8, pizza_id:p2.id, restaurant_id:r3.id)
RestaurantPizza.create(price:7, pizza_id:p3.id, restaurant_id:r5.id)
RestaurantPizza.create(price:7, pizza_id:p1.id, restaurant_id:r2.id)
RestaurantPizza.create(price:9, pizza_id:p4.id, restaurant_id:r1.id)
RestaurantPizza.create(price:10, pizza_id:p3.id, restaurant_id:r4.id)
RestaurantPizza.create(price:8, pizza_id:p1.id, restaurant_id:r1.id)
RestaurantPizza.create(price:7, pizza_id:p1.id, restaurant_id:r5.id)

puts "Done seeding..."