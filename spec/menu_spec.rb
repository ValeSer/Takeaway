require 'menu'

describe Menu do
  it 'if there is no instance of Dish, returns empty array' do
    dishes = []
    menu = Menu.new(dishes) 
    expect(menu.dishes).to eq []
  end

end