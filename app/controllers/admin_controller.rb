class AdminController < ApplicationController

  def index
  	
  end
  def disabled
  	user = User.where(:id => params[:id]).first
    unless user.nil?
    user.update_attributes(:is_disabled => true)
    redirect_to main_view_path
  end
 end
 def user_details
  @users = User.where(:role => "user")
 end
def edit_account
   @user=User.find(params[:id])
end
def update_account
    @user=User.find(params[:id])
 	  unless @user.nil?
      @user.update_attributes(:name => params[:user][:name])
 	 end
   # flash[:notice]="user updated "
   redirect_to main_view_path
end
def user_pro
  @prod_saved=User.where(:id=>params[:uid]).first.product_saveds
  @designer_like=User.where(:id=>params[:uid]).first.designer_likeds
  end
  def select_manag
    @usr=User.where(:role => "user").all
  end
end
