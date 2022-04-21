Rails.application.routes.draw do
  get "/monkeys" => "monkey#index"
  post "/monkeys" => "monkey#create"
  get "/monkeys/:id" => "monkey#show"
  patch "/monkeys/:id" => "monkey#update"
  delete "/monkeys/:id" => "monkey#destroy"

  get "images" => "image#index"
  post "images" => "image#create"
  get "images/:id" => "image#show"
  patch "images/:id" => "image#update"
  delete "images/:id" => "image#destroy"

end
