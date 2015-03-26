Bloccit::Application.routes.draw do

  devise_for :users

   resources :topics do
     resources :posts, except: [:index]
   end

  resources :posts do 
    resource :summary, only: [:new, :create, :show]
  end

  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end