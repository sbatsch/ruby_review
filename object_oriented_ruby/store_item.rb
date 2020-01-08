 # C.1 - You are the owner of a store that sells items (you decide what specifically). Each item has various properties such as color, price, etc.
 # C.2 - Represent 3 items using hashes. Each hash should have the same keys with different values.
 # C.3 - Be sure to use symbols for the keys. Try creating hashes using both types of hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).


# item_1 = {name: "blaster", price: 8000, description: "black with a red engrave", active: true}
# item_2 = {name: "lightsaber", price: 100000, description: "metal hilt with a blue blade", active: true}
# item_3 = {:name => "thermal detonator", :price => 1000000, :description => "shiny metal sphere", :active => true}

# puts "You're buying a #{ item_1[:name] } that is worth #{ item_1[:price] } and is #{ item_1[:description] }" 
# puts "You're buying a #{ item_2[:name] } that is worth #{ item_2[:price] } and that has a #{ item_2[:description] }" 


class Item
attr_reader :item_name, :price, :description, :active
attr_writer :item_name, :price, :description, :active


  def initialize(input_options)
    @item_name = input_options[:item_name]
    @price = input_options[:price]
    @description = input_options[:description]
    @active = input_options[:active]
  end 

  # def item_name 
  #   @item_name 
  # end 

  # def price 
  #   @price
  # end 

  # def description
  #   @description
  # end 

  # def active 
  #   @active
  # end 

  # def item_name=(new_name)
  #   @item_name = new_name 
  # end 

def print_info
    puts "You bought a #{ item_name } for $#{ price }. It's #{ description }." 
  end
end 

class Food < Item
  def initliaze 
    super(input_options)
    @shelf_life = innput_options[:shelf_life]
  end 
end 

food_1 = Food.new(
                  item_name: "Tomato", 
                  price: 5, 
                  description: "bright red", 
                  active: true,
                  shelf_life: "2 years"
                  )

item_1 = Item.new(
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








