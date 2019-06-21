Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]

  #route and controller action to get the body of the post:
  get '/posts/:id/body', to: 'posts#body'
end
