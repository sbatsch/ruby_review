 # C.1 - You are the owner of a store that sells items (you decide what specifically). Each item has various properties such as color, price, etc.
 # C.2 - Represent 3 items using hashes. Each hash should have the same keys with different values.
 # C.3 - Be sure to use symbols for the keys. Try creating hashes using both types of hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).


# item_1 = {name: "blaster", price: 8000, description: "black with a red engrave", active: true}
# item_2 = {name: "lightsaber", price: 100000, description: "metal hilt with a blue blade", active: true}
# item_3 = {:name => "thermal detonator", :price => 1000000, :description => "shiny metal sphere", :active => true}

# puts "You're buying a #{ item_1[:name] } that is worth #{ item_1[:price] } and is #{ item_1[:description] }" 
# puts "You're buying a #{ item_2[:name] } that is worth #{ item_2[:price] } and that has a #{ item_2[:description] }" 


class Item
  def initialize(item_name, price, description, active)
    @item_name = item_name
    @price = price
    @description = description
    @active = active
  end 

  def item_name 
    @item_name 
  end 

  def price 
    @price
  end 

  def description
    @description
  end 

  def active 
    @active
  end 

  def item_name=(new_name)
    @item_name = new_name 
  end 
end 

item_1 = Item.new("blaster", 8000, "black with a red engrave", true)

puts item_1.item_name
puts item_1.price
puts item_1.description
item_1.item_name = ("Megablaster")
puts item_1.item_name







