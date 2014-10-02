require 'customer'

describe Customer do

let(:customer) { Customer.new("Chris.P.Dukk", "+441233800175") }
  
  it "has a name" do
    expect(customer.name).to eq("Chris.P.Dukk")
  end

  it "has a phone number" do
    expect(customer.number).to eq("+441233800175")
  end

end