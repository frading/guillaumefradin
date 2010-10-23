atom_feed do |feed|
  feed.title("Guillaume Fradin")

  feed.updated(@post.published_at)

	feed.entry(@post) do |post|

		post.title(@post.title)
		post.summary(render "posts/content/#{@post.partial}")

	end
    
end
