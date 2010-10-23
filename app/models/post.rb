class Post < ActiveRecord::Base

	def previous_post
		Post.where("published_at < ?", published_at).last
	end
	def more_recent_post
		Post.where("published_at > ?", published_at).first
	end
	
	def partial
		partial_name || title.downcase
	end
	
	def publish
		self.published_at = Time.now
		self.published = true
		self.save
	end
	
	def to_param
		CGI::escape title
	end
	
end


