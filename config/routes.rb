Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]

  root 'posts#index'

  get '/posts/:id/body', to: 'posts#body'
end
