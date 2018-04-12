Rails.application.routes.draw do
  
  resources :tickets do 
  	member do 
      get :approve
      get :rejected
  	end
  end 

  resources :admin, only:[:index, :update] do 
  	member do 
      get :operator 
      get :supervisor      
  	end
  end  

  
  devise_for :users
  
  root "tickets#index"
end
