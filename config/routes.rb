Guillaumefradin::Application.routes.draw do

  root :to => "home#news"
  
  %w{ directing vfx web }.each do |name|
  	match name => "home##{name}"
  end

  resources :posts
  
  devise_for 	:users
	
	as :user do
		match 'login', :to => 'devise/sessions#new', :as => "new_user_session"
		match 'logout', :to  => 'devise/sessions#destroy', :as => "destroy_user_session"
	end

	
	#if %w{ development test}.include? Rails.env 
	#	devise_scope :user do
	#		get "users/sessions/cheat"
	#	end
	#end  
	
end
