class CategoriesController < ApplicationController
	def index
		if params[:value]
		@categories =Category.where(:is_featured=>true)
		else
				@categories = Category.find(:all,:order=> "created_at Desc")
			end
	end
	def new
		@category = Category.new
		@parent_category=Category.where("parent_id is null").collect{|i| [i.name,i.id]}
		if params[:category]=="subcategory"
			@subcategory=true
		end
	end
	def create_cate
		@category = Category.new(params[:category])
		p @category.errors.inspect
		if @category.save
			redirect_to categories_path
		else
			render :action=>"new"
		end
	end
	def show
		@c1=Category.find(params[:category_id])
	end
	def edit
		@c1=Category.find(params[:edit_cid])
	end
	def update
		
		@category=Category.find(params[:id])
		if @category.update_attributes(params[:category])
			redirect_to categories_path
		else
			render :action=>"edit"
		end
	end
	def destroy
		@category=Category.find(params[:del_cid])
		@category.destroy
		redirect_to categories_path
	end
end
