Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  resources :lists, only: [:show, :new, :create, :edit, :update] do
    resources :bookmarks, only: %i[new create]
  end
  # Defines the root path route ("/")
  # root "articles#index"
  #get  '/index', to: 'movies#index'

end
