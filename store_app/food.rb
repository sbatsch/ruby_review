require_relative "./item.rb"
require_relative "./destroyable.rb"


class Food < Item
  include Destroyable 
  def initliaze 
    super(input_options)
    @shelf_life = innput_options[:shelf_life]
  end 
end 