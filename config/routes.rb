Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]
end

get '/posts/:id/body', to: 'posts#body'
