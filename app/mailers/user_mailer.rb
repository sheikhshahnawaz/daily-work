class UserMailer < ActionMailer::Base
  default from: "from@example.com"


  def user_approve_mail(user)
	  @u = User.find_by(:role => "admin")
		@user = User.last
	  mail(to: @u.email, subject: 'Welcome to My Awesome Site')
  end

end
