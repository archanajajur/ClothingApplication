class CategoryProductsController < ApplicationController
	def index
		@categoryproducts=CategoryProduct.all
		


	end
	def new
		@categoryproduct=CategoryProduct.new
		@product_ids=Product.all.collect{|i| [i.name,i.id]}
		@category_ids=Category.all.collect{|i| [i.name,i.id]}
	end
	
	def create
		@categoryproduct=CategoryProduct.new(params[:categoryproduct])
		if @categoryproduct.save
			redirect_to :controller=>"category_products",:action=>"index"
		else
			render :action=>"new"

		end
	end
	def show
		@categoryproduct = CategoryProduct.find(params[:id])
	end
	def edit
		@categoryproduct=CategoryProduct.find(params[:id])
		@product_ids=Product.all.collect{|i| [i.name,i.id]}
		@category_ids=Category.all.collect{|i| [i.name,i.id]}
	end
	def update
		@categoryproduct=CategoryProduct.find(params[:id])
		if @categoryproduct.update_attributes(params[:categoryproduct])
			redirect_to category_products_path
		else 
			render :action=>"edit"
		end
	end
	def destroy
		@categoryproduct=CategoryProduct.find(params[:id])
		@categoryproduct.destroy
		redirect_to category_products_path
	end
end
