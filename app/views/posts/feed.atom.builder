atom_feed do |feed|
  feed.title("Guillaume Fradin")

  feed.updated(@post.published_at)

	feed.entry(@post) do |post|

		post.title(@post.title)
		content = render "posts/content/#{@post.partial}"
		post.summary(content.html_safe)

	end
    
end
