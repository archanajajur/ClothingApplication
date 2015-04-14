class ApplicationController < ActionController::Base

  protect_from_forgery
  before_filter :authenticate_user!
 
 def after_sign_in_path_for(resource)
  	if resource.role == "admin"
    	main_view_path
     elsif resource.is_disabled == true
    	@user=User.where(:id => resource.id).first
     	sign_out @user  
   		flash[:notice] = "Your Account has been disabled"
     	new_user_session_path
	else
  		frontend_home_path
    end
   end
end
