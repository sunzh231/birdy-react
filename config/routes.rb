Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'welcome/index'

  resource  :session
  resources :examples

  resources :messages do
    resources :comments
  end

  root 'examples#index'
end
