

class PostsController < ApplicationController
  
	#before_filter :authenticate_user!, :except=>[:index, :show]
	
	respond_to :html, :json, :xml, :atom
		
	layout :layout
		
	def feed
		@post = Post.where(:published=>true).last
		respond_with @post
	end
		
	def index
		@posts = Post.where(:published=>true).all.sort_by {|p| p.published_at }.reverse
	end
	
	def show
		@post = Post.find_by_title(CGI::unescape params[:id])
	end
	
	private
		
	def layout
		if action_name == "feed"
			return false
		else
			return 'application'
		end
	end
	
	
	#def new
	#	@post = Post.new
	#end
	#
	#def create
	#	
	#end
	#
	#def edit
	#	@post = Post.find(params[:id])
	#end
	#
	#def update
	#end
	#
	#def destroy
	#	@post = Post.find(params[:id])
	#	@post.destroy
	#end
	
	
end
