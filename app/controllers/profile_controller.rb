class ProfileController < ApplicationController
 #before_filter :authenticate_user!,except: [:view]
  def view

  	@profile = current_user
  end
end
