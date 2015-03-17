Bloccit::Application.routes.draw do
  get "summaries/show"
  get "topics/index"
  get "topics/new"
  get "topics/show"
  get "topics/edit"

#  get 'summary', to: :create
#  get 'summary', to: :show

  devise_for :users

   resources :topics do
     resources :posts, except: [:index]
   end

   resources :posts do
     resources :summaries, except: [:index, :edit]
   end

  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end