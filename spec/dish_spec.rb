require 'dish'

describe Dish do
  
  it 'returns a name' do
    dish = Dish.new('my_name', 5)
    expect(dish.name).to eq 'my_name'
  end

  it 'returns a price' do
    dish = Dish.new('my_name', 5)
    expect(dish.price).to eq 5
  end

  it 'returns false if not available' do
    dish = Dish.new('my_name', 5, false)
    expect(dish.is_available?).to eq false
  end

  it 'returns true if available with default value' do
    dish = Dish.new('my_name', 5)
    expect(dish.is_available?).to eq true
  end

  xit 'returns true if available with explicit value' do
    dish = Dish.new('my_name', 5, true)
    expect(dish.is_available?).to eq true
  end
end