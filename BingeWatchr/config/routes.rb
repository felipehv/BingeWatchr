Rails.application.routes.draw do
  resources :capitulos
  resources :series
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users, controllers: { registrations: 'users/registrations'  }# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "posts#index"
  devise_scope :user do get '/profile' => "users/registrations#profile" end
  devise_scope :user do get '/users/newson' => 'users/registrations#new0' end
  devise_scope :user do post '/users/createson' => 'users/registrations#create_son' end
  devise_scope :user do get '/users/edit_son/:id' => 'users/registrations#edit0' end
  devise_scope :user do post '/users/edit_son' => 'users/registrations#edit_son' end
  devise_scope :user do post '/users/create_son' => 'users/registrations#create_son' end


  resources :posts
  resources :users
end
