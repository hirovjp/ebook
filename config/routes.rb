Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
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

    get 'wordlist' => 'wordlists#list', as: 'list'
  end

end
