# Load the Rails application.
  def application_id
     Digest::MD5.hexdigest(Spring.project_root_path.to_s)
  end
   
  def socket_path



require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :port           => ENV['MAILGUN_SMTP_PORT'],
  :address        => ENV['MAILGUN_SMTP_SERVER'],
  :user_name      => ENV['MAILGUN_SMTP_LOGIN'],
  :password       => ENV['MAILGUN_SMTP_PASSWORD'],
  :domain         => 'stark-crag-31510.herokuapp.com',
  :authentication => :plain,
}
ActionMailer::Base.delivery_method = :smtp

