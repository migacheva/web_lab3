class TodosController < ApplicationController
  def index
    render all_todo_json
  end

  def add
    todo = Todo.new(todo_params)
    if todo.text.nil?
      render json: {error: 'Invalid data'}
      return
    end
    if  Todo.where(text: todo.text).length >= 1
      render json: {error: 'You have already added such a task!'}
      return
    end
    todo.save
    render all_todo_json
  end

  def delete
    id = params.permit(:id)[:id]
    Todo.delete(id)
    render all_todo_json
  end

  def delete_all
    Todo.delete_all
    render json: {success: true}
  end

  private
  def all_todo_json
    {json: TodoSerializer.new(Todo.all).serialized_json}
  end

  def todo_params
    params.permit(:text, :priority)
  end
end
