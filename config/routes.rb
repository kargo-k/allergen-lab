Rails.application.routes.draw do
  get '/recipes/search', to: 'recipes#search', as: 'recipes_search'
  
  get '/recipes/sort', to: 'recipes#sort', as: 'sort_recipes'

  resources :ingredients
  resources :recipes
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
