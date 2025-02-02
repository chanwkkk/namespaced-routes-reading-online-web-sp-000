Rails.application.routes.draw do
  resources :authors, only: %i[show index] do
    resources :posts, only: %i[show index new edit]
  end

  resources :posts, only: %i[index show new create edit update]



  namespace :admin do
    get '/admin/stats', to: 'stats#index'
  end

  root 'posts#index'
end
