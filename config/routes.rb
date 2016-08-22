Rails.application.routes.draw do
  root to="static_pages#root"

  namespace :api, defaults: { format: "json" } do
    resource :session, only: [:create, :destroy]
    resources :users, only: [:create]
    resources :subjects, except: [:new, :edit]
    resources :decks, except: [:new, :edit]
    resources :cards, except: [:new, :edit]
    resources :masteries, except: [:new, :edit]
    get 'public_subjects/:id', :to => 'subjects#public_show'
  end




end
