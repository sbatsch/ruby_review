require_relative "./Destroyable.rb"

class Item
  include Destroyable

  attr_reader :item_name, :price, :description, :active
  attr_writer :item_name, :price, :description, :active


  def initialize(input_options)
    @item_name = input_options[:item_name]
    @price = input_options[:price]
    @description = input_options[:description]
    @active = input_options[:active]
  end 

def print_info
    puts "You bought a #{ item_name } for $#{ price }. It's #{ description }." 
  end
end 
