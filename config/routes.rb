Rockpaperwhaaat::Application.routes.draw do

  get "games/win"

  get "games/lose"

  get "games/tie"

  match '/throw', to: 'games#throw', as: :throw, via: :post

  root to: 'games#new'
end
