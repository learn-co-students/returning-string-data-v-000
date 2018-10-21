Rails.application.routes.draw do
  root 'posts#index'
   resources :posts, only: %i[index show new create edit update]
   get '/posts/:id/body', to: 'posts#body'
end
