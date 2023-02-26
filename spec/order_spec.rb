require 'order'

describe Order do
  it 'fails if no dishes' do
  order = Order.new
  expect { order.add }.to raise_error 'Add a dish'
  end

  xit '' do
    order = Order.new
    order.receipt #=> ['Total: 0£']
    end
end