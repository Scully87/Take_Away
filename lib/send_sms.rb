require 'twilio-ruby'

class Send_sms

  attr_reader :from, :to, :time, :account_sid, :auth_token, :message

  def initialize
  	@time = Time.now.strftime("at %I:%M%p")
  	@account_sid = 'ACfc5faa1825f422c6798ea3e6d28f8257'
  	@auth_token = '31680b024f874b322843b6aa7ea46cc3'
  	@from = '+441233800175'
  	@to = '+447884496850'
  	@message = "Thank you, your order will arrive before #{time}"  
  end

# account_sid = 'ACfc5faa1825f422c6798ea3e6d28f8257'
# auth_token = '31680b024f874b322843b6aa7ea46cc3'
# @client = Twilio::REST::Client.new account_sid, auth_token
# time = Time.now
# time60 = (Time.now + (60*60)).strftime("at %I:%M%p")
#  @client.account.messages.create({
#    :to => "+447884496850",     
#      :from => "+441233800175",  
#        :body => "Thank you, your order will arrive before #{time60}, please remember to tip your driver!" 
#     })
# stub_request(:post, "https://ACfc5faa1825f422c6798ea3e6d28f8257:31680b024f874b322843b6aa7ea46cc3@api.twilio.com/2010-04-01/Accounts/ACfc5faa1825f422c6798ea3e6d28f8257/Messages.json").
#   with(:body => {"Body"=>"Thank you, your order will arrive before at 07:45PM, please remember to tip your driver!", "From"=>"+441233800175", "To"=>"+447884496850"},
#        :headers => {'Accept'=>'application/json', 'Accept-Charset'=>'utf-8', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'Content-Type'=>'application/x-www-form-urlencoded', 'User-Agent'=>'twilio-ruby/3.13.0 (ruby/x86_64-darwin13.0 2.1.2-p95)'}).
# to_return(:status => 200, :body => "", :headers => {})
end