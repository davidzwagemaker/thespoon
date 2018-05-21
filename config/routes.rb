Rails.application.routes.draw do
  # add / as homepages
  root to: 'pages#home'
  # get 'pages/home'

  get 'pages/contact'

  # get 'pages/about' --> update pages/about to about
  get 'about', to: 'pages#about', as: :about

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
