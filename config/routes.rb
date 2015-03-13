Bloccit::Application.routes.draw do
  devise_for :users
  resources :posts #, except: [:show]

  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end