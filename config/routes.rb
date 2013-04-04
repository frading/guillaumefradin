Guillaumefradin::Application.routes.draw do

	root :to => "home#index"

	match "scripts/seed" => "scripts#seed"

	match "test" => "home#test"

	match '*path' => "home#redirect"
	
end
