# class Users::SessionsController < Devise::SessionsController
# # before_filter :configure_sign_in_params, only: [:create]

# # GET /resource/sign_in
# def new
#   super

# end

#   # POST /resource/sign_in
#  def create
#   @user = User.where(:email => params[:user][:email]).first
#   if @user.is_disabled == true
#     redirect_to main_view_path
#     flash[:notice] = "You cannot acces"
#   else
#     dashboard_view_path
#   end
#   #super
#  # # render :text => current_user.inspect and return false
#  #  @resource=User.new(params[:user])
#  #   #self.resource = warden.authenticate!(auth_options)
#  #    #set_flash_message(:notice, :signed_in) if is_navigational_format?
#  #    #sign_in(resource_name, resource)
#  #    respond_with resource, :location => after_sign_in_path_for(@resource)
#  end

#   # DELETE /resource/sign_out
#   # def destroy
#   #   super
#   # end

#   protected


  
#   def after_sign_in_path_for(resource)
#    puts 7777777777777
#    puts "#{resource.is_disabled.inspect}"
#     #puts resource.role.inspect
#     if resource.role == "admin"
#     main_view_path
#   elsif resource.is_disabled==true
#     sign_out resource
    
#       else
#       dashboard_view_path
#        end
# end
# # def destroy
# # new_user_session_path 
# #   end

#   #end
#   # You can put the params you want to permit in the empty array.
#   # def configure_sign_in_params
#   #   devise_parameter_sanitizer.for(:sign_in) << :attribute
#   # end
# end
