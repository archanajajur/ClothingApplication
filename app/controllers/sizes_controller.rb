class SizesController < ApplicationController
	def index
		@sizes=Size.all
	end
	def new
		@size=Size.new
		@product_ids=Product.all.collect{|i| [i.name,i.id]}
	end
	
	def create
		@size=Size.new(params[:size])
		if @size.save
			
			redirect_to sizes_path
		else
			render :action=>"new"
		end
	end
	def show
		@size = Size.find(params[:id])
	end
	def edit
		@size=Size.find(params[:id])
		@product_ids=Product.all.collect{|i| [i.name,i.id]}
	end
	def update
		@size=Size.find(params[:id])
		if @size.update_attributes(params[:size])
			redirect_to sizes_path
		else 
			render :action=>"edit"
		end
	end
	def destroy
		@size=Size.find(params[:id])
		@size.destroy
		redirect_to sizes_path
	end
end
