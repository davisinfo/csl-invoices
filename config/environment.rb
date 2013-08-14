# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Invoices::Application.initialize!

ActionMailer::Base.smtp_settings = {
    :address        => 'smtp.sendgrid.net',
    :port           => '587',
    :authentication => :plain,
    :user_name      => ENV['app17274229@heroku.com'],
    :password       => ENV['4rthntgq'],
    :domain         => 'heroku.com',
    :enable_starttls_auto => true
}