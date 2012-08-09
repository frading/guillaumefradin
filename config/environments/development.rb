Guillaumefradin::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Raise exception on mass assignment protection for Active Record models
  # config.active_record.mass_assignment_sanitizer = :strict

  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)
  config.active_record.auto_explain_threshold_in_seconds = 0.5
  
  # WHEN HAVING issues with the asset pipeline
  # like if things do not update as expected, 
  # make sure to delete what has been pre compiled:
  #
  # rm -rf public/assets/*
  config.assets.compile = true
    
  # Do not compress assets
  config.assets.compress = false
  
  # Expands the lines which load the assets
  # debug needs to be true to have the assets compile on dev
  # well, maybe not since that gave me trouble after having pre compile and deleted assets...
  # it seems I just need to make sure the cache is cleared
  #config.assets.debug = true
  config.assets.debug = false

  # trying from http://stackoverflow.com/questions/8170039/ruby-on-rails-3-1-assets-pipeline-assets-rendered-twice
  config.serve_static_assets = false
    
  # overrides from rails guide
  # http://guides.rubyonrails.org/asset_pipeline.html#customizing-the-pipeline
  config.assets.js_compressor = nil#:uglifier

  # devise



end
