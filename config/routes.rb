Rails.application.routes.draw do

  get 'welcome/index'
  get 'welcome/info'
  get 'welcome/start'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    authenticated :user do
      root 'categories#index', as: :authenticated_root
    end
    unauthenticated { root 'welcome#index', as: :unauthenticated_root }
  end
  resources :users do
    resources :categories do
      resources :expenses
    end
  end
  resources :welcome, only: %i[index info start]
end

