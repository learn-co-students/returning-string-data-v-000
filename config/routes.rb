Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]

  # Get body of the post
  get '/posts/:id/body', to: 'posts#body'
  
end
