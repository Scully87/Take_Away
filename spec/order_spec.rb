require 'order'
require 'dishes'
require 'lineitem'

  describe Order do

    let(:order) { Order.new }
    let(:pizza) { Dish.new("Pizza", 8.50) }
    let(:kebab) { Dish.new("Kebab", 4.50) }

    it "adds lineitems list to final order" do
        order.add(LineItem.new(pizza, 3))
        expect(order.line_items.count).to eq(1)
    end

    it "shows the accumulative total" do
        order.add(LineItem.new(pizza, 3))
        order.add(LineItem.new(kebab, 2))
        expect(order.total).to eq(34.50)
    end

    it "knows the time it was placed" do
        expect(order.time_placed).to eq(Time.now.to_i)
    end
    
end