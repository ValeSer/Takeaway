require 'dish'
require 'menu'
require 'order'

describe 'integration' do
  it '' do
    dishes = []
    dish1 = Dish.new('my_name', 5)
    dishes.push(dish1)
    menu = Menu.new(dishes) 
    expect(menu.dishes).to eq [dish1]
  end
  it 'contains three dishes' do
    dishes = []
    dish1 = Dish.new('my_name', 5)
    dish2 = Dish.new('my_name', 10)
    dish3 = Dish.new('my_name', 15, false)
    dishes.push(dish1, dish2, dish3)
    menu = Menu.new(dishes) 
    expect(menu.dishes).to eq [dish1, dish2, dish3]
  end

  it 'fails if dish not available' do
    dishes = []
    dish1 = Dish.new('my_name', 5, false)
    dishes.push(dish1)
    menu = Menu.new(dishes)
    order = Order.new
    expect { order.add(dish1) }.to raise_error 'Out of stock'
  end

  it 'returns receipt with items and total' do
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
    expect(order.receipt).to eq [dish1, dish2, dish3, 'Total: 30£']
  end

end