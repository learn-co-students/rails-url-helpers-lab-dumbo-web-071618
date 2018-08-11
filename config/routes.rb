Rails.application.routes.draw do
  resources :students, only: [:index]

  # This show route can be refactored into the above resources method call, like so:
  # resources :students, only: [:index, :show]
  # However, for the sake of this lab and seeing how you can pass params through
  # the route, we'll keep it explicit for now and refactor later.

  #show action
  get "students/:id", to: "students#show", as: :student

  #edit action
  get "students/:id/activate", to: "students#activate", as: :edit_student

  #update action
  patch "students/:id", to: "students#update"
end
