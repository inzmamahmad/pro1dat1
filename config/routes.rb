Rails.application.routes.draw do
  map.resources :articles, :has_many => :comments
map.resources :photos, :has_many => :comments
map.resources :events, :has_many => :comments
  resources :commts
  resources :articles
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :articles do
  resources :comments
end
end
