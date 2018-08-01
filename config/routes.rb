Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]
  get '/posts/:id/body', to: 'posts#body'
  get '/posts/:id/edit', to: 'posts#edit'
  get 'posts/:id', to: 'posts#show'
  patch '/posts/:id', to: 'posts#update'

end
