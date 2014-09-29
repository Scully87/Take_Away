require 'rubygems'
require 'twilio-ruby'
 
class Send

	attr_reader :account_sid
	attr_reader :auth_token
	attr_reader :client
	attr_reader :from
	attr_reader :to

	def initialize
    	@account_sid = 'ACfc5faa1825f422c6798ea3e6d28f8257'
    	@auth_token = '31680b024f874b322843b6aa7ea46cc3'
    	@from = '+441233800175'
    	@to = '+447884496850'
  	end

  	def message(time = (Time.now + (60*60)).strftime("at %I:%M%p"))
  		@message = "Thank you, your order will arrive before #{time} you fatty!!!!"
  	end

end


