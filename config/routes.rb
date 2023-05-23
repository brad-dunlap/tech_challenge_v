Rails.application.routes.draw do
  root "playlists#index"

  resources :playlists, only: [:index, :show, :new, :create, :destroy] do
		member do
			get 'search'
		end
    resources :playlist_tracks, only: [:create, :destroy]
  end

	resources :artists, only: [:new, :create, :destroy]

  resources :songs, only: [:index, :new, :create, :destroy]
end
