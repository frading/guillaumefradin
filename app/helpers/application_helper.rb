module ApplicationHelper

	def link_to_custom(label, path)
		render :partial=>'layouts/current_page', :locals=>{:label=>label, :path=>path}
	end
	
end
