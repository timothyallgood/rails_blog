Rails.application.routes.draw do
  root "articles#index" # Sets our index action from our controller to display as the homepage
 
  resources :articles do # Rails route method to generate all conventional routes for our Articles controller
    resources :comments # Adds conventional routes for comments on each article
  end
end
