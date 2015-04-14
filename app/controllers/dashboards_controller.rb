class DashboardsController <  ApplicationController
	#before_filter :authenticate_user!,except: [:new]

	def new
		@designerliked=DesignerLiked.where(:user_id=>current_user.id).all
		@product=ProductSaved.where(:user_id=>current_user.id).select("distinct  product_id")
 @productsaved=ProductSaved.where(:user_id=>current_user.id).all


	end
	def create 
		
	end
	def show 
	end


end
