require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require_relative 'lib/todolist.rb'
require_relative 'lib/task.rb'

todo_list = TodoList.new("Josh")
todo_list.load_tasks

get "/" do
  @tasks_user = todo_list.load_tasks
  erb(:task_index)
end

get "/new_task" do
  erb(:new_task)
end

post "/create_task" do
  task = params[:task]
  todo_list.add_task(Task.new(task))
  todo_list.save

  redirect "/"
end