Rails.application.routes.draw do
  root "articles#index" # Sets our index action from our controller to display as the homepage
 
  resources :articles # Rails route method to generate all convetional routes for our Articles controller
end
