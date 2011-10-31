class EmailText < ActionMailer::Base
  def email_me(user, text)
      recipients "#{user.email}"
      from       "Text2Phone"
      subject    "You have recieved an e-mail from Text2Phone"
      sent_on    Time.now
      body       text.text
  end
  
  def email_friend(friend_email, user, text)
      recipients "#{friend_email}"
      from       "Text2Phone"
      subject    "#{user.email} has sent you an e-mail from Text2Phone"
      sent_on    Time.now
      body       text.text
  end
end
