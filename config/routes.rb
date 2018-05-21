Rails.application.routes.draw do
  # add / as homepages ; get 'pages/home' is now no longer relevant
  root to: 'pages#home'

  # reroute /about to about (use below instead of "get /pages/about")
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about', as: :about

  # call action from a different controller
  get 'restaurants', to: 'restaurants#index'

end
