Ohmygao::Application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :pages
    resources :users
  end
  match '/aboutomg' => 'pages#about', as: :about
  match '/whatisinside' => 'pages#inside', as: :inside
  match '/whyeatit' => 'pages#why', as: :why
  match '/howtoorder' => 'pages#order', as: :order
  root :to => 'pages#index'
end
