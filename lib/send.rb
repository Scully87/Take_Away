require 'rubygems'
require 'twilio-ruby'
 
#def send

	account_sid = 'ACfc5faa1825f422c6798ea3e6d28f8257'
	auth_token = '31680b024f874b322843b6aa7ea46cc3'

	@client = Twilio::REST::Client.new account_sid, auth_token

 	#time = Time.now
 	time60 = (Time.now + (60*60)).strftime("at %I:%M%p")

	@client.account.messages.create({
		:to => "+447884496850",     
    	:from => "+441233800175",  
   		:body => "Thank you, your order will arrive before #{time60} you fat twat!!!!" 
    })

#end
