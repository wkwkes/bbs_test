Rails.application.routes.draw do
  resources :bbs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'bbs#index'
end
