Guillaumefradin::Application.routes.draw do

	root :to => "home#index"
  #root :to => "home#news"
  
  #%w{ directing vfx web press }.each do |name|
  #	match name => "home##{name}"
  #end
#
  #resources :posts, :only=>[:show, :index]
  #match 'feed', :to=>'posts#feed'
  #
  #
  #match '*path' => 'application#route_not_found'
  #devise_for 	:users
	#
	#as :user do
	#	match 'login', :to => 'devise/sessions#new', :as => "new_user_session"
	#	match 'logout', :to  => 'devise/sessions#destroy', :as => "destroy_user_session"
	#end

	
	#if %w{ development test}.include? Rails.env 
	#	devise_scope :user do
	#		get "users/sessions/cheat"
	#	end
	#end  
	
end
