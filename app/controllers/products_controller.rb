class ProductsController < ApplicationController
	def index
		if params[:value]
			@products=Product.where(:is_featured=>true)
		else
		@products=Product.all
	end
	end
	def new
		@product=Product.new
		@designer_ids=Designer.all.collect{|i|[i.name,i.id]}
	end
	
	def create
		@product=Product.new(params[:product])
		if @product.save
			redirect_to product_index_path
		else
			render :action=>"new"
		end
	end
	def show
		@product = Product.find(params[:show_pid])
	end
	def edit
		@product=Product.find(params[:edit_pid])

	end
	def update
		@product=Product.find(params[:update_pid])
		if @product.update_attributes(params[:product])
			redirect_to product_index_path
		else 
			render :action=>"edit"
		end
	end
	def destroy
		@product=Product.find(params[:del_pid])
		@product.destroy
		redirect_to product_index_path
	end
end
