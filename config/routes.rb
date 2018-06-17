Rails.application.routes.draw do
  resources :posts, only: %i[index show new create edit]
  get '/posts/:id/body', to: 'posts#body'
end
