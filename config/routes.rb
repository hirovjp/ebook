Rails.application.routes.draw do
  get '/' => 'home#index'
  # get 'home/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :learnwordlists
  resources :wordlists
  resources :lessons
  resources :results
  resources :categories
  resources :users

  get 'admin' => 'category#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
