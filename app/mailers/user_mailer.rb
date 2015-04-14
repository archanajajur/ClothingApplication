class UserMailer < ActionMailer::Base
  #default from: "from@example.com"
  def welcome_email(user)
  	@user = user
  	#@user = user
   # @url  = "http://example.com/login"
    mail(:to => user.email, :subject => "Welcome #{@user	.name}")
  end
end
