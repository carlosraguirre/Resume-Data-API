Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #show all experience data
  get "/experience" => "experience#index"
  #create new experience instance
  post "/experience" => "experience#create"
  #show experience by id 
  get "/experience/:id" => "experience#show"
  #update experience instance
  patch "/experience/:id" => "experience#update"
  #experience destory
  delete "/experience/:id" => "experience#destroy"
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

  get '/students' => 'students#index'
  post '/students' => 'students#create'
  patch '/students/:id' => 'students#update'
  delete '/students/:id' => 'students#destroy'
  get '/students/:id' => 'students#show'
  
  get "/capstone" => "capstone#index"
  post "/capstone" => "capstone#create"
  get "/capstone/:id" => "capstone#show"
  patch "/capstone/:id" => "capstone#update"
  delete "/capstone/:id" => "capstone#destroy"

  get "/skills" => "skills#index"
  post "/skills" => "skills#create"
  get "/skills/:id" => "skills#show"
  patch "/skills/:id" => "skills#update"
  delete "/skills/:id" => "skills#destroy"
end
