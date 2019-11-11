Rails.application.routes.draw do
  scope 'admin' do
    resources :learnwordlists
    resources :wordlists
    resources :lessons
    resources :results
    resources :categories
    resources :users
  end

  get "/home", to: 'home#home', as: 'home'
  scope 'front' do
  end

  get '/' => 'home#index', as: 'elearn'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  

  get 'admin' => 'category#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  get 'profile' => 'profile#profile', as: 'profile'
end
