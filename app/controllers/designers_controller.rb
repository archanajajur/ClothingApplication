class DesignersController < ApplicationController
	def index
		@designers=Designer.all
	end
	def new
		@designer=Designer.new
	end
	
	def create
		@designer=Designer.new(params[:designer])
		if @designer.save
			redirect_to designers_path
		else
			render :action=>"new"
		end
	end
	def show
		@designer=Designer.find(params[:show_did])
	end
	def edit
		@designer=Designer.find(params[:edit_did])
		
	end
	def update
		@designer=Designer.find(params[:update_did])
		if @designer.update_attributes(params[:designer])
			redirect_to designers_path
		else
			render :action=>"edit"
		end

	end
	def destroy
		
		@designer=Designer.find(params[:del_did])
		@designer.destroy
		redirect_to designers_path
	end
	
end
