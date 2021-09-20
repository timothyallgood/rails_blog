Rails.application.routes.draw do
  root "articles#index" # Sets our index action from our controller to display as the homepage
 
  get "/articles", to: "articles#index" # Associates the /articles route to the index action of our Articles Controller

  get "/articles/:id", to: "articles#show" # When /articles/:id is visited we will use our show action to find the article with the associated id
end
