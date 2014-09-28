require 'lineitem'

describe LineItem do

  let(:item) { LineItem.new(:dish) }

    it "has a dish" do
        expect(item.dish).to eq :dish
    end

    it "sets the quantity to one as default" do
        expect(item.quantity).to eq(1)
    end

    it "can change quantity" do
        item = LineItem.new(:dish, 3)
        expect(item.quantity).to eq(3)
    end

    it "calculates the total price" do
        dish = double :dish, price: 8.50
        item = LineItem.new(dish, 3)
        expect(item.total).to eq(25.50)
    end
end