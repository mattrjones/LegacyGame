Rails.application.routes.draw do
  get 'encounters/blacksmith'
  get 'encounters/rummage'
  get 'encounters/monster'
  get 'heros/home'
  get 'items/:id/upgrade', to: 'items#upgrade'
  resources :items
  resources :monsters
  resources :heros
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
