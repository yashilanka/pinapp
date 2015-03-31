class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :pin_counts

	def configure_permitted_parameters
	   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, 
   																													:encrypted_password, 
   																													:password, 
   																													:password_confirmation, 
   																													:first_name, 
   																													:last_name, 
   																													:facebook, 
   																													:behance, 
   																													:dribbble, 
   																													:twitter, 
   																													:about_me) }
	   
	   devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, 
	   																																:encrypted_password, 
	   																																:password, 
	   																																:password_confirmation, 
	   																																:current_password, 
	   																																:first_name, 
	   																																:last_name, 
	   																																:facebook, 
	   																																:behance, 
	   																																:dribbble, 
	   																																:twitter, 
	   																																:about_me) }
	end

	private

	# Pins stats
	def pin_counts
    @pinstate = Pin.all
    @pins_count = @pinstate.count
		if user_signed_in?
      @user_pins = current_user.pin
      @user_pin_count = @user_pins.count
  	end
  end
end
