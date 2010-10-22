Guillaumefradin::Application.routes.draw do

  root :to => "home#index"
  
  %w{ directing vfx web contact }.each do |name|
  	match name => "home##{name}"
  end

end
