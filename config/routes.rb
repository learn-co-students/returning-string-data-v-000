Rails.application.routes.draw do
  root 'posts#index'

  get '/posts/:id/body', to: 'posts#body'

  resources :posts, only: %i[index show new create edit update]
end
