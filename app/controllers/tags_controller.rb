class TagsController < ApplicationController
	def show
		@tag = Tag.find(params[:id])
		
	end

	def index
		@tag = Tag.all
		
	end

	def edit
		@tag = Tag.find(params[:id])
		
	end
end
