Guillaumefradin::Application.routes.draw do

	root :to => "home#index"
	match "test" => "home#test"

	match '*path' => "home#redirect"
	
end
