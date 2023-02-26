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
  def initialize(price)
    * price is a float number
  end

  def price
    * returns price
  end

  def add(dish)
    * adds a dish to dishes
    * returns nothing
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
menu = Menu.new(dishes) 
menu.dishes = #=> []

#2
dishes = []
dish1 = Dish.new(5)
dishes.push(dish1)
menu = Menu.new(dishes) 
menu.dishes = #=> [dish1]

#3
dishes = []
dish1 = Dish.new(5)
dish2 = Dish.new(10)
dish3 = Dish.new(15)
dishes.push(dish1, dish2, dish3)
menu = Menu.new(dishes) 
menu.dishes = #=> [dish1, dish2, dish3]

# As a customer
# So that I can order the meal I want
# I would like to be able to select some number of several available dishes.

#4
dishes = []
dish1 = Dish.new(5)
dish2 = Dish.new(10)
dish3 = Dish.new(15)
dishes.push(dish1, dish2, dish3)
menu = Menu.new(dishes) 
order = Order.new
order.add() #=> fails 'Add a dish'

#5
dishes = []
order = Order.new
dish1 = Dish.new(5)
dish2 = Dish.new(10)
dishes.push(dish1)
menu = Menu.new(dishes)
dish1.is_available?
order.add(dish1)#=> fails 'Out of stock'


#6
dishes = []
dish1 = Dish.new(5)
dish2 = Dish.new(10)
dish3 = Dish.new(15)
dishes.push(dish1, dish2, dish3)
menu = Menu.new(dishes) 
order = Order.new
dish1.is_available?
dish2.is_available?
dish3.is_available?
order.add(dish1)
order.add(dish2)
order.add(dish3)
order.receipt #=> [dish1, dish2, dish3, 'Total: 30£']




# As a customer
# So that I can verify that my order is correct
# I would like to see an itemised receipt with a grand total.


```

4. Create Examples as Unit Tests
```ruby



```



5. Implement the Behaviour
