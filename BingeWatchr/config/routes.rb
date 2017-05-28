Rails.application.routes.draw do
  resources :capitulos
  resources :series
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users, controllers: { registrations: 'users/registrations'  }# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "posts#index"
  devise_scope :user do get '/profile' => "main#profile" end
  devise_scope :user do get '/users/newson' => 'main#new0' end
  devise_scope :user do post '/users/createson' => 'main#create_son' end
  devise_scope :user do get '/users/edit_user/:id' => 'main#edit0' end
  devise_scope :user do post '/users/create_son' => 'main#create_son' end
  devise_scope :user do post '/users/delete_user' => 'main#delete_user' end
  devise_scope :user do post '/users/edit_user' => 'main#edit_user' end
  devise_scope :user do post '/users/create_admin' => 'main#create_admin' end


  resources :posts
  resources :users
end
