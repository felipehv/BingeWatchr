Rails.application.routes.draw do
  resources :capitulos
  resources :series
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "posts#index"

  resources :posts
end
