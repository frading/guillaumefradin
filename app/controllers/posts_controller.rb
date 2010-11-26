# to update the blog
# 1. create a partial for it in views/posts/content
# 2. create a post model: Post.create :title=>'new_press_section'
# 3. Post.last.publish on dev enviroment for test
# 4. commit, post still wont be visible on prod machine
# 4. recreate and publish (Post.last.publish) on prod, then post will be visible

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
