Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/clients' => 'clients#index'
  get '/clients/new' => 'clients#new'
  post '/clients' => 'clients#create'
  get '/clients/:id' => 'clients#show'
  patch '/clients/:id/edit' => 'clients#edit'
  get '/clients/:id' => 'clients#update'
  delete '/clients/:id' => 'clients#destroy'
end
