Rails.application.routes.draw do
  devise_for :users
  resources :portfolios, except:[:show]
  #default yolları override etmek
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'angular-items', to: 'portfolios#angular'

  resources :blogs do
  	member do
  		get :toggle_status

  	end
	end


  get 'about' , to: 'pages#about'
  get 'contact' , to: 'pages#contact'
 
  
  # ana sayfa
  root to: 'pages#home'
end
