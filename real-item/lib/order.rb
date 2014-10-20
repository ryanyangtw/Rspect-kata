require_relative "./item"

class Order

  attr_accessor :items

  def initialize
    self.items = []
  end

  def <<(item_name)
    #binding.pry
    self.items << Item.new(item_name)
  end

end

