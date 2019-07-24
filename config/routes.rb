Rails.application.routes.draw do

  get 'users/new'
  root "static_pages#home"
  # get 'static_pages/help'
  get '/help', to: 'static_pages#help'

  # get 'static_pages/about'
  get '/about', to: 'static_pages#about'

  # get 'static_pages/contact'
  get '/contact', to: 'static_pages#contact'

  # create a new path (example.com/signup) and link it to 
  # the controller (users) and the view (users/new)
  get '/signup', to: 'users#new'
  
end
