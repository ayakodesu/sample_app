Rails.application.routes.draw do
  get '/top' => 'homes#top'
 
end

Rails.application.routes.draw do
  get 'lists/new'
  post 'lists' => 'lists#create'
end

Rails.application.routes.draw do
  
  get 'top' => 'homes#top'
  resources :lists
 
end