Rails.application.routes.draw do
  resources :porters
  mount Hyperloop::Engine => '/hyperloop'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'hyperloop#app'
end
