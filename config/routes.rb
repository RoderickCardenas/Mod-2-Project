Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  get '/', to: 'games#welcome', as: :welcome
  ##################################################
  ############# Routes for games ###################
  ##################################################
  
  #index
  get '/games', to: 'games#index', as: 'games'
  #new
  # get '/games/new', to: 'games#new', as: 'new_game'
  #show
  get '/games/:id', to: 'games#show', as: 'game'
  #create
  # post '/games', to: 'games#create'
  #edit
  # get '/games/:id/edit', to: 'games#edit', as: 'edit_game'
  #update
  # patch '/games/:id', to: 'games#update'
  #destroy
  # delete '/games/:id', to: 'games#destroy'

  ##################################################
  ############# Routes for users ##################
  ##################################################

  #index
  get '/users', to: 'users#index', as: 'users'
  #new
  get '/users/new', to: 'users#new', as: 'new_user'
  #show
  get '/users/:id', to: 'users#show', as: 'user'
  #create
  post '/users', to: 'users#create'
  #edit
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  #update
  patch '/users/:id', to: 'users#update'
  #destroy
  delete '/users/:id', to: 'users#destroy'

  ##################################################
  ############# Routes for reviews #################
  ##################################################

  #index
  get '/reviews', to: 'reviews#index', as: 'reviews'
  #new
  get '/reviews/new', to: 'reviews#new', as: 'new_review'
  #show
  get '/reviews/:id', to: 'reviews#show', as: 'review'
  #create
  post '/reviews', to: 'reviews#create'
  #edit
  get '/reviews/:id/edit', to: 'reviews#edit', as: 'edit_review'
  #update
  patch '/reviews/:id', to: 'reviews#update'
  #destroy
  delete '/reviews/:id', to: 'reviews#destroy'
end
