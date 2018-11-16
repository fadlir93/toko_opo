Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/product_review", to: "product_review#index"
  get "/product_review/detail", to: "product_review#show"
  post "/product_reviews", to: "product_review#create"
  delete "/product_review/delete", to: "product_review#destroy"

  get "/product", to: "product#index"
  get "/product/detail", to: "product#show"
  delete "/product/delete", to: "product#destroy"
  post "/product/new", to: "product#create"
  


end
