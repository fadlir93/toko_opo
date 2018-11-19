Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/order_details', to: 'order_details#index'
  get '/order_detail/:id', to: 'order_details#show'
  post '/order_detail', to: 'order_details#create'
  delete '/order_detail/:id/delete', to: 'order_details#destroy'
end
