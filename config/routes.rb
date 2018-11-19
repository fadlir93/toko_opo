Rails.application.routes.draw do

  get "/products_category", to: "products_category#index"
=begin 
  get : -> nama url tujuan, to: -> nama_controller#methodnya, as: -> namapath 
  yang fungsinya untuk dipanggil di controller,helper maupun view, 
  contohnya di view <%= link_to show_path, "click here to show" %>
=end
  get "/product_category/detail", to: "products_category#show", as: "show"
  delete "/product_category/delete", to: "products_category#destroy"
  post "/product_category/create", to: "products_category#create"

end
