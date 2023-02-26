require 'dish'

describe Dish do
  it 'returns true if available with default value' do
    dish = Dish.new('my_name', 5)
    expect(dish.is_available?).to eq true
  end
  xit 'returns true if available with explicit value' do
    dish = Dish.new('my_name', 5, true)
    expect(dish.is_available?).to eq true
  end
=begin
    #1c
    dish = Dish.new('my_name', 5, false)
    dish.is_available? #=> false

    #1d
    dish = Dish.new('my_name', 5)
    dish.price #=> 5

    #1e
    dish = Dish.new('my_name', 5)
    dish.name #=> 'my_name'
=end
end