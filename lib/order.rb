class Order 
  def initialize
  end

  def add(dish)
    fail 'Add a dish' if dish == nil
    fail 'Out of stock' 
  end

  def receipt 
    ['Total: 0£']
  end

end