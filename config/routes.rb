Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/experience' => 'experience#index'
  #show all groups
  get "/education" => "education#index"
  #show one specific group
  get "/education/:id" => "education#show"
  #make a new group
  post "/education" => "education#create"
  #update currently existing group
  patch "/education/:id" => "education#update"
  #delete existing group
  delete "/education/:id" => "education#destroy"
end
