Rails.application.routes.draw do
  get '/top' => 'homes#top'
 
end

Rails.application.routes.draw do
  get 'lists/new'
  post 'lists' => 'lists#create'
end

Rails.application.routes.draw do
  get 'lists/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'top' => 'home#top'
  post 'lists' => 'lists#create'
  get 'lists' => 'lists#index'
  get 'lists/:id' => 'lists#show', as: 'list'
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
  patch 'lists/:id' => 'lists#update', as: 'update_list'
 end