Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "playlists#index"

  resources :playlists do
    resources :playlist_tracks, only: [:create, :destroy]
  end

  resources :songs
end
