require 'menu'

describe 'Menu' do
	let(:menu) {Menu.new}
	let(:pizza) {double :dish, :name => "Pizza", :price => 8.00}

	context "Initialization" do
		it "should list an empty dishes array" do
			expect(menu.dishes).to eq([])
		end
	end

	context "will be altered to" do
		it "add a dish" do
			expect(menu.add_dish(pizza)).to eq([pizza])
		end
		it "list the dishes and prices" do 
			menu.add_dish(pizza)
			menu.list_dishes
		end
	end
end