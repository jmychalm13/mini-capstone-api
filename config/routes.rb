Rails.application.routes.draw do
  get "/products" => "products#index"

  get "/products/:id" => "products#show"

  post "/products" => "products#create"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"

  get "/suppliers" => "suppliers#index"

  post "/suppliers" => "suppliers#create"

  get "/suppliers/:id" => "suppliers#show"

  patch "/suppliers/:id" => "suppliers#update"

  delete "/suppliers/:id" => "suppliers#destroy"

  post "/users" => "users#create"
end
