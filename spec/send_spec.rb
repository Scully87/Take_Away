require 'webmock/rspec'
require 'send_sms'
require 'timecop'
	
describe Send_sms do

  let(:send)        { Send_sms.new }
  let(:account_sid) { 'ACfc5faa1825f422c6798ea3e6d28f8257' }
  let(:auth_token)  { '31680b024f874b322843b6aa7ea46cc3' }
  let(:from)        { '+441233800175' }
  let(:to)          { '+447884496850'}
  let(:time)        { Time.now.strftime("at %I:%M%p") }
  let(:message)     { "Thank you, your order will arrive before #{time}" }
  	
  it "has an account_sid" do
    expect(send.account_sid).to eq(account_sid)
  end

  it "has an auth_token" do
    expect(send.auth_token).to eq(auth_token)
  end

  it "has a number to send from" do
    expect(send.from).to eq(from)
  end

  it "has a number to send to" do
    expect(send.to).to eq(to)
  end

  it "has a message to send" do
    expect(send.message).to eq(message)
  end

WebMock.disable_net_connect!(allow_localhost: true)

  it "has set up webmock correctly" do
    WebMock.stub_request(:any,"www.google.com")
    Net::HTTP.get("www.google.com", "/")
  end
   
  it "has a request @api.twilio.com to release message" do
    time = Time.now.strftime("at %I:%M%p")
    WebMock.stub_request(:post, "https://ACfc5faa1825f422c6798ea3e6d28f8257:31680b024f874b322843b6aa7ea46cc3@api.twilio.com/2010-04-01/Accounts/ACfc5faa1825f422c6798ea3e6d28f8257/Messages.json").
    with(:body => {"Body"=>"Thank you, your order will arrive before #{time}", "From"=>"+441233800175", "To"=>"+447884496850"},
    :headers => {'Accept'=>'application/json', 'Accept-Charset'=>'utf-8', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'Content-Type'=>'application/x-www-form-urlencoded', 'User-Agent'=>'twilio-ruby/3.13.0 (ruby/x86_64-darwin13.0 2.1.2-p95)'}).
    to_return(:status => 200, :body => "", :headers => {})
    expect(send.message).to eq(message)
  end

end