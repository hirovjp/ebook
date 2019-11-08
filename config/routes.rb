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

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
