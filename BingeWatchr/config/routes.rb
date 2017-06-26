Rails.application.routes.draw do
  resources :comments
  resources :capitulos
  resources :series
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users, controllers: { registrations: 'users/registrations', omniauth_callbacks: "users/omniauth_callbacks" }# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "posts#index"
  devise_scope :user do get '/profile' => "main#profile" end
  devise_scope :user do get '/users/newson' => 'main#new0' end
  devise_scope :user do post '/users/createson' => 'users/registrations#create_son' end
  devise_scope :user do get '/users/edit_user/:id' => 'main#edit0' end
  devise_scope :user do post '/users/create_son' => 'users/registrations#create_son' end
  devise_scope :user do post '/users/delete_user' => 'users/registrations#delete_user' end
  devise_scope :user do post '/users/edit_user' => 'users/registrations#edit_user' end
  devise_scope :user do post '/users/create_admin' => 'users/registrations#create_admin' end

    devise_scope :user do
      get '/users/sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session2
    end

  get '/series' => 'series#index', as: :lista_series
  post '/series' => 'series#create', as: :create_new_series
  post '/comments' => 'comments#create'

  post '/rating_series' => 'rating_series#create', as: :create_rating

  post '/rating_capitulos' => 'rating_capitulos#create', as: :create_rating_capitulos
  get '/capitulos/:id' => 'rating_capitulos#show', as: :show_capitulo
  post '/seen_capitulos' => 'seen_capitulos#create', as: :seen
  delete '/seen_capitulos' => 'seen_capitulos#destroy', as: :unseen

  post '/favorites' => 'favorites#create', as: :fav
  delete 'favorites' => 'favorites#destroy', as: :unfav
  get '/favorites' => 'favorites#index', as: :show_fav


  get '/series/:id' => 'series#show', as: :tag

  get '/series/:id/capitulos' => 'capitulos#showsome', as: :show_some_capitulos

  put '/capitulos/:id', to: 'capitulos#update'

  get '/statistics', to: 'series#statistics'

  resources :posts
  # resources :users
end
