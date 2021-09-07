# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :agents, only: %i[index]
  get 'agents/:name', to: 'agents#show'

  resources :maps, only: :index
  resources :lineups, only: :create

  get 'ability/:id/lineups', to: 'abilities#lineups'
end
