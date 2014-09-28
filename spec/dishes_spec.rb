require 'dishes'

describe Dish do

    let(:dish) { Dish.new("Pizza", 0.00) }

    it "has a name" do
        expect(dish.name).to eq "Pizza"
    end

    it "has a default price" do
        expect(dish.price).to eq(0.00)
    end

    it "can be initialized with a price" do
        dish = Dish.new("Pizza", 8.50)
        expect(dish.price).to eq(8.50)
    end

end