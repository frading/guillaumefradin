require 'compass'
#require 'fancy-buttons'
rails_root = ::Rails.root.to_s #(defined?(Rails) ? Rails.root : RAILS_ROOT).to_s
Compass.add_project_configuration(File.join(rails_root, "config", "compass.rb"))

if Rails.env == 'production'
	Sass::Plugin.options[:never_update] = true
end

Compass.configure_sass_plugin!
Compass.handle_configuration_change!
