Bloccit::Application.routes.draw do
  resources :advertisements, except: [:new, :create, :edit, :update, :destroy]

  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end