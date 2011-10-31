class EmailText < ActionMailer::Base
  def send_by_email(user)
      recipients "<#{user.email}>"
      from       "My Forum "
      subject    "Please activate your new account"
      sent_on    Time.now
      body       "{ :user => user }"
  end
end
