require 'twilio-ruby'

@client = Twilio::REST::Client.new(ENV["TWILIO_SID"], ENV["TWILIO_TOKEN"])

@call = @client.calls.create(
  url: 'http://demo.twilio.com/docs/voice.xml',
  to: ENV["TWILIO_TO_NO"],
  from: ENV["TWILIO_FROM_NO"]
)