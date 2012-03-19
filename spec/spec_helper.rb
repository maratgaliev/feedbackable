$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))


require 'rails'
require 'active_record'
require 'feedbackable'
require File.dirname(__FILE__) << '/../app/models/feedback'

require 'fake_app'