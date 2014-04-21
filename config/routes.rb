
Guillaumefradin::Application.routes.draw do

	root to: "home#index"

	# match "scripts/seed" => "scripts#seed" # keep for legacy

	# match "film/dev" => "film/dev#index"
	# match "film/seeds" => "film/seeds#index"
	# match "film/seeds/presentation" => "film/seeds#presentation"
	# match "film/seeds/script" => "film/seeds#script"

	get "cv/fr" => "cv#fr"

	# match "test" => "home#test"

	get "printmosaic" => "printmosaic#index"
	# match "printmosaic/dev" => "printmosaic#dev"

	get '*path' => "home#redirect"

	
end
