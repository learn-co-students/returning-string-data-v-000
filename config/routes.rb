Rails.application.routes.draw do
  resources :posts
  get 'posts/:id/body', to: 'posts#body'
  # patch "/posts/:id", :as => "/posts/:id"
end