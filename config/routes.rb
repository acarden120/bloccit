Bloccit::Application.routes.draw do
  get "welcome/contact"
  get "welcome/index"
  get "welcome/about"
  root to: 'welcome#index'
end