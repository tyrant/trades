Trades::Application.routes.draw do

  devise_for :traders
  devise_for :customers
  
  match 'jobs/:title-:id' => 'jobs#show'  
  resources :jobs  
  match 'jobs/:job_id/review' => 'jobs#review'


  match 'reviews/quick' => 'reviews#new'
  match 'reviews/create_job_review.json', {:controller => 'reviews', :action => 'create_job_review', :format => 'json'}
  resources :reviews

  match 'traders/request_quote.json' => 'traders#request_quote'
  match 'traders/search' => 'traders#search'
  resources :traders
  
  resources :quotes
  resources :professions
  resources :businesses
  resources :images
  
  match 'profile' => 'application#profile'
  
  #match ':controller(/:action(/:id))'

  root :to => "jobs#index"
end
