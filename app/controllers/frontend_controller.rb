class FrontendController < ApplicationController
	
	def home 
		@a=Category.where("parent_id is ? and is_featured=?",nil,true)
		@p=Product.where("is_featured=?",true)
		@desi=Designer.all
		@designerliked=DesignerLiked.where(:user_id=>current_user.id).all
		@product=ProductSaved.where(:user_id=>current_user.id).select("distinct  product_id")
 @productsaved=ProductSaved.where(:user_id=>current_user.id).all

	end
	
	def category_individual 
		@ind=Category.where(:id=>params[:category_id]).first
		@products=Category.where(:id=>params[:category_id]).first.products
		@id=Category.where(:id=>params[:category_id]).first.products
		


	end
	def category_main
		@categ=Category.where(:is_featured=>true)
		@categ1=Category.where(:is_featured=>false)

	end
	def designer_main 
		@desi=Designer.all
		@products=Product.where(:is_featured=>true)

	end
	def designer_individual 
		@designer=Designer.find(params[:idesid])
		@ckeck_user_liked=DesignerLiked.where(user_id: current_user.id,designer_id: params[:idesid]).first
		@products=Product.where(:is_featured=>true,:designer_id=>@designer.id).all
		@products1=Product.where(:is_featured=>false,:designer_id=>@designer.id).all
	
end

	def product_main 
		@product_main=Product.where("is_featured=?",true)
	end
	def product_individual 

	@ind_pid=Product.where(:id=>params[:ipid]).first
@id=Product.where(:id=>params[:ipid]).first.category_products
		@size=Size.where(:product_id=>params[:ipid]).all.collect{|i| [i.sizes,i.id]}

		
	
	end
	
	def featured_subcate
		@cate=Category.where(:id=>params[:id]).first.sub_categories
		@id=Category.where(:id=>params[:id]).first.products
		
	end
	def designer_liked
		@designer_liked=DesignerLiked.create(:designer_id=>params[:id],:user_id=>current_user.id)
		redirect_to :back
	end
def price
	@price=Size.where(:id=>params[:sizes]).first
	respond_to do |format|
  format.json {render :json => "#{@price.price}".to_json}
  
end
end
def res_back
	@productsaved=ProductSaved.create(:size_id=>params[:sizes],:user_id=>current_user.id,:product_id=>params[:product_id],:qty_selected=>params[:quantity])
	redirect_to :back
end
def destroy
	
	if params[:product_id].present?
	@productsaved=ProductSaved.where(:user_id=>current_user.id,:product_id=>params[:product_id]).all.map(&:delete)
	
else

	
@productsaved=ProductSaved.find(params[:id])
@productsaved.destroy
end
	redirect_to :controller=>"dashboards",:action=>"new"
end

end


