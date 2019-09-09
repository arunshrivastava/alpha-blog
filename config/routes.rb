Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #https://gentle-depths-86735.herokuapp.com/
  root 'pages#home'
  get 'about', to: 'pages#about'

end
