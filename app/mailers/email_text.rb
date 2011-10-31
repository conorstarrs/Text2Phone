class EmailText < ActionMailer::Base
  def send_by_email
      recipients "conor.starrs@gmail.com"
      from       "My Forum "
      subject    "Please activate your new account"
      sent_on    Time.now
      body       "Hello there!"
  end
end
