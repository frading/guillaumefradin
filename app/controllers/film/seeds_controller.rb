class Film::SeedsController < ApplicationController
  
	def index
	end
	
	def presentation
		redirect_to "https://dl.dropbox.com/s/9ocdst9fm22hdnr/presentation.pdf"
	end

	def script
		redirect_to "https://dl.dropbox.com/s/wjbkx8xasxfru27/seeds.pdf"
	end

end
