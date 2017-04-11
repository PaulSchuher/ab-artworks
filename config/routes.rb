Rails.application.routes.draw do
  root to: 'artworks#index'

  resources :artworks, only: [:index, :show] do
    member do
      post 'publish'
    end
  end
end
