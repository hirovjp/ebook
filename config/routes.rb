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

  get '/' => 'home#index', as: 'elearn'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  get 'profile' => 'profile#profile', as: 'profile'
  get 'wordlist' => 'wordlists#list', as: 'list'
end
