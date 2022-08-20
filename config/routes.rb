Rails.application.routes.draw do
  get '/top' => 'homes#top'
 
end

Rails.application.routes.draw do
  get 'lists/new'
  post 'lists' => 'lists#create'
end

Rails.application.routes.draw do
  get 'lists/new'
  
  get 'top' => 'homes#top'
  post 'lists' => 'lists#create'
  get 'lists' => 'lists#index'
  get 'lists/:id' => 'lists#show', as: 'list'
end