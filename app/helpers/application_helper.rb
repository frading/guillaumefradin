module ApplicationHelper

	def link_to_custom(label, path, html_class="")
		render :partial=>'layouts/current_page', :locals=>{:label=>label, :path=>path, :html_class=>html_class}
	end
	
end
