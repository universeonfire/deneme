Rails.application.routes.draw do
  resources :portfolios, except:[:show]
  #default yolları override etmek
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'


  resources :blogs

  get 'about' , to: 'pages#about'
  get 'contact' , to: 'pages#contact'
  
 
  # ana sayfa
  root to: 'pages#home'
end
