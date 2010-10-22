class PostsController < ApplicationController
  
	before_filter :authenticate_user!, :except=>[:index, :show]
	
	def index
		@posts = Post.all.sort_by {|p| p.published_at }.reverse
	end
	
	def show
		@post = Post.find(params[:id])
	end
	
	def new
		@post = Post.new
	end
	
	def create
		
	end
	
	def edit
		@post = Post.find(params[:id])
	end
	
	def update
	end
	
	def destroy
		@post = Post.find(params[:id])
		@post.destroy
	end
	
	
end
