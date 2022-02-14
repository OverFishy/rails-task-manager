Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # read all tasks
  get "tasks", to: "tasks#index", as: :tasks

  # create a task
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  # show a task
  get "tasks/:id", to: "tasks#show", as: :task

  # update a task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "tasks/:id", to: "tasks#update"

  # delete a task
  delete "tasks/:id", to: "tasks#delete"

end


# http://localhost:3000/tasks/3
