class Feedback < ActiveRecord::Base
        
	belongs_to :feedbackable, :polymorphic => true
	
	attr_accessible :subject, :feed_text, :contact_email
  validates_presence_of :subject, :feed_text, :feedbackable, :presence => true
  validates :contact_email, :presence => true,
            :length => {:minimum => 3, :maximum => 254},
            :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
end
