class Users::RegistrationsController < Devise::RegistrationsController



	def create
		user=params[:user][:email]
  	UserMailer.user_approve_mail(user).deliver
	end

end


