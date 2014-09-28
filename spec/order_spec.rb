require 'order'
require 'dishes'
require 'lineitem'

  describe Order do

    let(:order) { Order.new }
    let(:pizza) { Dish.new("Pizza", 8.50) }

    it "adds lineitems list to final order" do
        order.add(LineItem.new(pizza, 3))
        expect(order.line_items.count).to eq 1
    end

    
end