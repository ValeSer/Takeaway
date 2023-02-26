class Dish
  def initialize(name, price, availability= true)
    @name = name
    @price = price
    @availability = availability
  end

  def name
    @name
  end

  def price
    @price
  end

  def is_available?
    false
  end

end