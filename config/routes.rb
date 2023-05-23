Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #show all tasks
  get "tasks", to: "tasks#index"

  #create a new task 
  get "tasks/new", to: "tasks#new", as: :new_task
  post "tasks", to: "tasks#create"

  # show one task
  get "tasks/:id", to: "tasks#show", as: :task

  # edit a task 
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  #delete
  delete "tasks/:id", to: "tasks#destroy"
 
  # Defines the root path route ("/")
  # root "articles#index"
end
