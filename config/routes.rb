Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]

  #power AJAX request to replace truncated content on /posts with full body of post
  get '/posts/:id/body', to: 'posts#body'
end
