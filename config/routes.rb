Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/index'

  resources :places, only: [:index, :show]

  root 'welcome#index'

  get 'about' => 'welcome#about', as: 'about'
  post 'map' => 'welcome#map', as: 'map'
  get 'map' => 'welcome#map', as: 'map1'
end
