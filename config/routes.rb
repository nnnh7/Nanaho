Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'ices/list' => 'ices#list'
  resources :ices do
    resources :likes, only: [:create, :destroy]
   
  end

  resources :recommends
  root 'ices#index'

   
end
