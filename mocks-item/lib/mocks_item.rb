class Order

  attr_accessor :items

  def initialize
    self.items = []
  end

  def <<(item_name)
    self.items << Item.new(item_name)
  end

end