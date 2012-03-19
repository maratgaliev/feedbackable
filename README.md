Installation:

1) Add gem to your Gemfile, as:
   gem 'feedbackable'
   then run
   bundle install

2) Your email settings must be preconfigured before using feedbackable gem

3) Run generators:
    rails g feedbackable:install
    rake db:migrate
    rails g feedbackable:views

4) Add admin_email configuration parameter to your application.rb:
    config.feedbackable.admin_email = 'your@admin_email.com'
5) Add to your application.js
    //= require jqmodal
    //= require init
   To your application.css
    *= require jqmodal
6) Add to your model:
        has_feedback
   And to your view:
       <a href="#" class="jqModal">Add feedback</a>
       <div class="jqmWindow" id="dialog">
        <a href="#" class="jqmClose">X</a>
        <%= render :partial => 'feedbacks/form', :locals => { :feedbackable => @your_model_instance }  %>
       </div>