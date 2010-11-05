class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :check_uri
  
  protected
  
	def check_uri
		return if request.local?
		
		base_host = "www.guillaumefradin.com"
		#base_host = "everytimehq.heroku.com"
		if request.host != base_host
			redirect_to request.protocol + base_host + request.fullpath
		end
	end

end
