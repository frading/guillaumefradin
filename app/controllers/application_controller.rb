class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :check_uri
  
	def route_not_found
		redirect_to root_path
		#error_response("route not found #{request.path}", :not_found)
		#render :text => 'What the fuck are you looking for ?', :status => :not_found
	end
	
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


#module LibController
#	module Error
#		
#		def self.included(base)
#			base.class_eval do
#				
#				rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found
#				rescue_from Auth::PermissionDenied, :with => :permission_denied
#			
#			end
#		end
#		
#		def route_not_found
#			error_response("route not found #{request.path}", :not_found)
#			#render :text => 'What the fuck are you looking for ?', :status => :not_found
#		end
#
#		def record_not_found(exception)
#			error_response( exception.message, :not_found )
#		end
#		
#		def permission_denied(exception)
#			error_response(exception.message, :unprocessable_entity)
#		end
#	 
#		def error_response(message, status)
#
#			if html?# and format.first == :html
#				@error = message
#				render '/application/error'
#			else
#				render :json => {:error=>message}.as_json, :status => status
#				#respond_with({:error=>formats}, :status => status || :unprocessable_entity)
#			end
#				
#		end
#
#	end
#end
