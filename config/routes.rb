Trades::Application.routes.draw do

  devise_for :traders
  devise_for :customers
  
  match 'jobs/:job_id/review', {:controller => 'jobs', :action => 'review'}
  resources :jobs

  match 'reviews/quick', {:controller => 'reviews', :action => 'new'}
  match 'reviews/create_job_review.json', {:controller => 'reviews', :action => 'create_job_review', :format => 'json'}
  resources :reviews

  match 'traders/find', {:controller => 'traders', :action => 'find'}
  resources :traders
  
  resources :quotes
  resources :professions
  resources :businesses
  resources :images
  
  #match ':controller(/:action(/:id))'

  root :to => "jobs#index"
end
