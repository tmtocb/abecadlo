Rails.application.routes.draw do
  root 'players#list'

  get 'players', to: 'players#list'
end
