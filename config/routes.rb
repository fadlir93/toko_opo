Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/product", to: "product#index"
  get "/product/detail", to: "product#show"
  delete "/product/delete", to: "product#destroy"
  post "/product/new", to: "product#create"


  


end
