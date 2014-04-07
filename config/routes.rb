Rails3BootstrapDeviseCancan::Application.routes.draw do
  get "pages/home"

  get "pages/links"

  get "pages/about"

  resources :categories
  resources :posts

  authenticated :user do
    root :to => 'posts#index'
  end
  root :to => "pages#home"
  devise_for :users
  resources :users
end