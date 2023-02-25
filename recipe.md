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
  * returns the grand total
  end

end



```





3. Create Examples as Integration Tests
Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.

Encode one of these as a test and move to step 4.

4. Create Examples as Unit Tests
Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

Encode one of these as a test and move to step 5.

5. Implement the Behaviour
For each example you create as a test, implement the behaviour that allows the class to behave according to your example.

Then return to step 3 until you have addressed the problem you were given. You may also need to revise your design, for example if you realise you made a mistake earlier.