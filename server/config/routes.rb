Rails.application.routes.draw do
  get '/todos', to: 'todos#index'
  post '/todos/add', to: 'todos#add'
  post '/todos/delete', to: 'todos#delete'
end
