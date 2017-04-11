Rails.application.routes.draw do
  root to: 'artworks#index'

  resources :artworks, only: [:index] do
    member do
      get 'toggle_publishment'
    end
  end
end
