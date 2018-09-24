Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]

patch 'posts/:id', to: 'posts#update'


  get '/posts/:id/body', to: 'posts#body'
end
