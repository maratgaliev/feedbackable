class FeedbacksController < ApplicationController

  def create
    pf = params[:feedback]
    @feedback = Feedback.new(
        :subject => pf[:subject],
        :feed_text => pf[:feed_text],
        :contact_email => pf[:contact_email]
    )
    @feedback.feedbackable_type = pf[:feedbackable_type]
    @feedback.feedbackable_id = pf[:feedbackable_id]

    respond_to do |format|
      if @feedback.save
        format.js
        # Need some load mask in the future
        UserMailer.feedback_send(pf[:subject], pf[:feed_text], pf[:contact_email]).deliver
      else
        format.js { render :partial => 'errors' }
      end
    end
  end

end
