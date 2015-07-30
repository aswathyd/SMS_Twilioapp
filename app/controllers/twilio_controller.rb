class TwilioController < ApplicationController
	def send_sms

		message = params[:message]
       number = params[:number]
      account_sid = 'AC839877b1d952651b4a951d2b0bbc66c6'
       auth_token = 'e994020278ec5f4570293d5cb36e60ae'
    
       @client = Twilio::REST::Client.new account_sid, auth_token
    
     @message = @client.account.messages.create({:to => "+1"+"#{number}",
                                      :from => "+15082024152",
                                     :body => "#{message}"})
     redirect_to '/'
	end
end
