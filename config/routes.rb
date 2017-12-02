Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]
  get 'posts/:id/body', to: 'posts#body'
  root 'posts#index'
end
