require 'order'

describe Order do
  it 'fails if no dishes' do
    order = Order.new
    expect { order.add }.to raise_error 'Add a dish'
  end

  it 'returns total of 0£ if receipt is empty' do
    order = Order.new
    expect(order.receipt).to eq  ['Total: 0£']
  end
end