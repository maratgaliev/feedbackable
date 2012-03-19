require 'active_record'
require 'action_controller/railtie'

# database
ActiveRecord::Base.configurations = {'test' => {:adapter => 'mysql2', :database => 'marat_development', :username => "root", :password => "777777"}}
# ActiveRecord::Base.configurations = {'test' => {:adapter => 'sqlite3', :database => ':memory:'}}
ActiveRecord::Base.establish_connection('test')

# config
app = Class.new(Rails::Application)
app.config.secret_token = "3b7cd727ee24e8444053437c36cc66c4"
app.config.session_store :cookie_store, :key => "_myapp_session"
app.config.active_support.deprecation = :log
app.initialize!

# models
class Order < ActiveRecord::Base
  has_feedback
end

# routes
app.routes.draw do
  resources :feedbacks
end

#migrations
ActiveRecord::Base.silence do
  ActiveRecord::Migration.verbose = false
  ActiveRecord::Schema.define :version => 0 do
    create_table "feedbacks", :force => true do |t|
      t.string :subject, :limit => 20
      t.text :feed_text
      t.references :feedbackable, :polymorphic => true
      t.string :contact_email
      t.timestamps
    end
  end
end