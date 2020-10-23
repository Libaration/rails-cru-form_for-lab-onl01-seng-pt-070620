Rails.application.routes.draw do
  resources :songs, only: %i[index create update show new edit]
  resources :genres, only: %i[index create update show new edit]
  resources :artists, only: %i[index create update show new edit]
end
