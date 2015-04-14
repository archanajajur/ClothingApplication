class ProductSavedController < ApplicationController
	def index
		@productsaved=ProductSaved.all
	end
	def new
		@productsaved=ProductSaved.new
	end
	def create
		@productsaved=ProductSaved.new(params[:productsaved])
		if @productsaved.save
			redirect_to product_saved_index_path
		else
			render :action=>'new'
		end
	end
	def show
		@productsaved=ProductSaved.find([:id])
	end
	def edit
		@productsaved=ProductSaved.find([:id])
	end
	def update
		@productsaved=ProductSaved.find([:id])
		if @productsaved.update_attributes(params[:productsaved])
			redirect_to product_saved_index_path
		else
			render :action=>"edit"
	end
end
	def destroy
		@productsaved=ProductSaved.find([:id])
		@productsaved.destroy
		redirect_to product_saved_index_path
	end
	
end
