module ApplicationHelper

	def link_to_custom(label, path, html_class="")
		render :partial=>'layouts/current_page', :locals=>{:label=>label, :path=>path, :html_class=>html_class}
	end
	
	def feedburner_url
		#feed_url(:atom)
		'http://feeds.feedburner.com/GuillaumeFradin'
	end
	
	def vimeo(video_id, options={})
		render :partial=>'home/entries/vimeo', locals: {video_id: video_id, options: options}
	end


end
