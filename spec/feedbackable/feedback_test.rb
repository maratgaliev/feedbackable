require 'spec_helper'

describe Feedback do

  it "should create valid feedback object" do
    order = Order.new
    order.save
    feedback = Feedback.new
    feedback.subject = "Test subject"
    feedback.feed_text = "Cool order!"
    feedback.contact_email = 'from@test.com'
    feedback.feedbackable = order
    feedback.save.should be true
  end

  it "should not create feedback without data" do
    feedback = Feedback.new
    feedback.save.should be false
  end

end