Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]

  get '/posts/:id/body' => 'posts#body', as: 'post_body'
end
