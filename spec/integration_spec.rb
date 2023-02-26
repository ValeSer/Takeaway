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




end