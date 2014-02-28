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

	def everytime_server
		#Rails.env.development? ? "http://localhost:5000" : "https://www.everytimehq.com"
		"https://www.everytimehq.com"
	end

	def everytime_widgets_js
		javascript_include_tag "#{everytime_server}/embed/script.js"
	end

	def everytime_media(id, options={})
		options[:id] = id
		options[:widget] ||= 400
		options[:height] ||= 200
		render partial: 'home/entries/everytime_media', locals: options
	end


end
