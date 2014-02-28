web: bundle exec rails server thin -p $PORT
worker: env TERM_CHILD=1 bundle exec rake resque:work QUEUE='*'
