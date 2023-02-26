class Order 
  def initialize
    @cart = []
  end

  def add(dish)
    fail 'Add a dish' if dish == nil
    fail 'Out of stock' if !dish.is_available?
    @cart << dish
  end

  def receipt 
     @cart + [total]
  end

private
  def total
    total = @cart.sum(&:price)
    "Total: #{total}£"
  end

end