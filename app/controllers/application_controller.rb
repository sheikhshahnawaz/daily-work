class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_devise_params, if: :devise_controller?

 # validates :contact_no , :format => { :with => /\A(\+1)?[0-9]{10}\z/, :message => "Not a valid 10-digit telephone number" }

  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
    
    u.permit(:first_name, :last_name, :email, :user_name, :password ,:password_confirmation , :role , :contact_no, :salary , address_attributes:[:address , :state , :city , :pincode] , work_attributes:[:profile])
    end
	end

  def after_sign_out_path_for(user)
    user_session_url(user)
  end

  def after_sign_up_path(user)
    user_path(user)
  end

  def after_sign_in_path(user)
    #binding.pry
    user_url(user)
  end

end



