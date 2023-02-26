# Takeaway

1. Describe the Problem
As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices.

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes.

As a customer
So that I can verify that my order is correct
I would like to see an itemised receipt with a grand total.

As a customer
So that I am reassured that my order will be delivered on time
I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered.

2. Design the Class System
```ruby
class Dish
  def initialize(name, price, availability = true)
    * name is a string
    * price is a float number
    * availability is a boolean
  end

  def name
    *returns name
  end

  def price
    * returns price
  end

  def is_available?
   * returns true of false
  end
end

class Menu
  def initialize(dishes)
    * dishes is list with several istances of Dish
  end

  def dishes
    * returns a list of dishes
  end
end

class Order 
  def initialize 
  end

  def add(dish)
    * dish is an istance of Dish
  end

  def receipt
   * returns list of added dishes and grand total
  end

private
  def total
  * returns the grand total as a string 
  end
end

```

3. Create Examples as Integration Tests
```ruby
# As a customer
# So that I can check if I want to order something
# I would like to see a list of dishes with prices.

#1
dishes = []
dish1 = Dish.new('my_name', 5)
dishes.push(dish1)
menu = Menu.new(dishes) 
menu.dishes = #=> [dish1]

#2
dishes = []
dish1 = Dish.new('my_name', 5)
dish2 = Dish.new('my_name', 10)
dish3 = Dish.new('my_name', 15, false)
dishes.push(dish1, dish2, dish3)
menu = Menu.new(dishes) 
menu.dishes = #=> [dish1, dish2, dish3]


# As a customer
# So that I can order the meal I want
# I would like to be able to select some number of several available dishes.

#3
dishes = []
dish1 = Dish.new('my_name', 5, false)
dishes.push(dish1)
menu = Menu.new(dishes)
order = Order.new
order.add(dish1)#=> fails 'Out of stock'

# As a customer
# So that I can verify that my order is correct
# I would like to see an itemised receipt with a grand total.

#5
dishes = []
dish1 = Dish.new('my_name', 5)
dish2 = Dish.new('my_name', 10)
dish3 = Dish.new('my_name', 15)
dishes.push(dish1, dish2, dish3)
menu = Menu.new(dishes) 
order = Order.new
order.add(dish1)
order.add(dish2)
order.add(dish3)
order.receipt #=> [dish1, dish2, dish3, 'Total: 30£']


```

4. Create Examples as Unit Tests
```ruby

>#1a
dish = Dish.new('my_name', 5)
dish.price #=> 'my_name'

>#1b
dish = Dish.new('my_name', 5)
dish.name #=> 5

>#1c
dish = Dish.new('my_name', 5, false)
dish.is_available? #=> false

>#1d
dish = Dish.new('my_name', 5 )
dish.is_available? #=> true

>#1e
dish = Dish.new('my_name', 5, true)
dish.is_available? #=> true


>#2a
dishes = []
menu = Menu.new(dishes) 
menu.dishes #=> []

>#3a
order = Order.new
order.add() #=> fails 'Add a dish'

>#3b
order = Order.new
order.receipt #=> ['Total: 0£']

```
5. Implement the Behaviour
