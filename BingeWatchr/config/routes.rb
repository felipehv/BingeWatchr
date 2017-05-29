Rails.application.routes.draw do
  resources :capitulos
  resources :series
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users, controllers: { registrations: 'users/registrations' }# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "posts#index"
  devise_scope :user do get '/profile' => "main#profile" end
  devise_scope :user do get '/users/newson' => 'main#new0' end
  devise_scope :user do post '/users/createson' => 'users/registrations#create_son' end
  devise_scope :user do get '/users/edit_user/:id' => 'main#edit0' end
  devise_scope :user do post '/users/create_son' => 'users/registrations#create_son' end
  devise_scope :user do post '/users/delete_user' => 'users/registrations#delete_user' end
  devise_scope :user do post '/users/edit_user' => 'users/registrations#edit_user' end
  devise_scope :user do post '/users/create_admin' => 'users/registrations#create_admin' end


  get 'series' => 'series#index'

  get 'series/:id' => 'series#show', as: :tag

  get 'series/:id/capitulos' => 'capitulos#showsome'

  put 'capitulos/:id', to: 'capitulos#update'

  resources :posts
  resources :users
end
