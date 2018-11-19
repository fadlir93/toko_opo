Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

<<<<<<< HEAD
  get '/order_details', to: 'order_details#index'
  get '/order_detail/:id', to: 'order_details#show'
  post '/order_detail', to: 'order_details#create'
  delete '/order_detail/:id/delete', to: 'order_details#destroy'
=======
  get "/product", to: "product#index"
  get "/product/detail", to: "product#show"
  delete "/product/delete", to: "product#destroy"
  post "/product/new", to: "product#create"


  


>>>>>>> de67767d8d8ed65b15b43a1dcdedd544dd75aef9
end
