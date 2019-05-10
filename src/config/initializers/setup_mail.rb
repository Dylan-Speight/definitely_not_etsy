ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :address => 'smtp.sendgrid.net',
    :port => '587',
    :authentication => :plain,
    :user_name => 'app130885983@heroku.com',
    :password => 'w67b6fsz5774',
    :domain => 'heroku.com',
    :enable_starttls_auto => true
}