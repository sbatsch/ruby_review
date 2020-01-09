require_relative "./food.rb"
require_relative "./item.rb"

food_1 = StoreFront::Food.new(
                  item_name: "Tomato", 
                  price: 5, 
                  description: "bright red", 
                  active: true,
                  shelf_life: "2 years"
                  )

item_1 = StoreFront::Item.new(
                  item_name: "blaster", 
                  price: 8000, 
                  description: "black with a red engrave", 
                  active: true
                  )

puts item_1.item_name
puts item_1.price
puts item_1.description
item_1.item_name = ("Megablaster")
puts item_1.item_name
puts item_1.print_info
puts food_1.item_name
puts item_1.obliterate