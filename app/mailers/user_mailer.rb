class UserMailer < ActionMailer::Base
  def feedback_send(subject, body, from)
    @subject = subject
    @body = body
    @from = from
    mail(:to => Feedbackable::config.admin_email, :from => from, :subject => "You've got new feedback!")
  end
end
