MediaServer::Application.routes.draw do
  
  resources :movies
  
  root :to => "home#index"
end
