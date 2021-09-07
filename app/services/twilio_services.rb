class TwilioService
  def initializers
    @sms_number = ENV['TWILIO_SMS_NUMBER']
    @client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_ACCOUNT_TOKEN']
  end

  def send_message(body, to, from)
    twilio_message = @client.messages.create(
      body: body,
      to: to,
      from: from
    )
    puts twilio_message.sid
  end
end
