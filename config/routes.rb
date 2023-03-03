Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :lists, only: %i[show new create index] do
    resources :bookmarks, only: %i[new create]
  end
  resources :lists, only: [:destroy]
  resources :bookmarks, only: [:destroy]
end
