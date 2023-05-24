Rails.application.routes.draw do
  root 'playlists#index'

  resources :playlists, only: %i[index show new create destroy] do
    member do
      get 'search'
    end
    resources :playlist_tracks, only: %i[create destroy]
  end

  resources :artists, only: %i[new create destroy]

  resources :songs, only: %i[index new create destroy]
end
