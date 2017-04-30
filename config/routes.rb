# frozen_string_literal: true

Rails.application.routes.draw do
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :lines
  resources :examples, except: %i[new edit]
  resources :votes, except: %i[destroy new edit]
  resources :users, only: %i[index show]
end
