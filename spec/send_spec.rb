#require 'webmock/rspec'
require 'send'

	describe Send do

	let(:send) { Send.new }
	let(:account_sid) { 'ACfc5faa1825f422c6798ea3e6d28f8257' }
	let(:auth_token) { '31680b024f874b322843b6aa7ea46cc3' }
	let(:from) { '+441233800175' }
	let(:to) { '+447884496850'}
	(time = (Time.now + (60*60)).strftime("at %I:%M%p"))
	let(:message) { "Thank you, your order will arrive before #{time} you fatty!!!!" }

	
	it "should have an account_sid" do
      	expect(send.account_sid).to eq(account_sid)
    end

    it "should have an auth_token" do
    	expect(send.auth_token).to eq(auth_token)
    end

    it "should have a number to send from" do
    	expect(send.from).to eq(from)
    end

    it "should have a number to send to" do
    	expect(send.to).to eq(to)
    end

    it "should have a message to send" do
    	expect(send.message).to eq(message)
    end

 #    WebMock.disable_net_connect!(allow_localhost: true)

 #    account_sid = 'ACfc5faa1825f422c6798ea3e6d28f8257'
	# auth_token = '31680b024f874b322843b6aa7ea46cc3'

	# @client = Twilio::REST::Client.new account_sid, auth_token

 
 # 	time = (Time.now + (60*60)).strftime("at %I:%M%p")

	# @client.account.messages.create({
	# 	:to => "+447884496850",     
 #    	:from => "+441233800175",  
 #   		:body => "Thank you, your order will arrive before #{time} you fatty!!!!" 
 #    })

end
