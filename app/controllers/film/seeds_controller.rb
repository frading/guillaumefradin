class Film::SeedsController < ApplicationController
  
	def index
	end
	
	def presentation
		#redirect_to "https://dl.dropbox.com/s/9ocdst9fm22hdnr/presentation.pdf"
		redirect_to "https://www.dropbox.com/s/2kjgcby1m0h24cj/seeds_presentation_guillaume_fradin.pdf"
	end

	def script
		redirect_to "https://dl.dropbox.com/s/wjbkx8xasxfru27/seeds.pdf"
	end

end
