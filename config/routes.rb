Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'
  get '/artists', to: 'artists#index'
  get '/artists/new', to: 'artists#new'
  get '/artists/:id', to: 'artists#show'
  get '/artworks', to: 'artworks#index'
  get '/artworks/:id', to: 'artworks#show'
  get '/artists/:artist_id/artworks', to: 'artist_artworks#index'
  post '/artists', to: 'artists#create'
end
