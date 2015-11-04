
require 'rspec'
require 'yaml/store'

module ManageFile

  def save
    @todo_store.transaction do 
        @todo_store[@user] = @tasks
    end
  end

  def load_tasks
    tasks = YAML.load_file('./public/tasks.yml')
    if tasks
      @tasks = tasks[@user]
    else
      @tasks
    end
  end

end

class TodoList
  attr_reader :tasks
  include ManageFile
  
  def initialize user
    @todo_store = YAML::Store.new('./public/tasks.yml') 
    @user = user
    @tasks = []
  end

  def add_task task_to_add
    @tasks << task_to_add
  end

  def delete_task task_to_delete
    @tasks.delete_if { |task| task.id == task_to_delete.id }
  end

  def find_task_by_id id_task
    @tasks.find { |task| task.id == id_task }
  end

  def sort_by_created order
    if order == "DESC"
      @tasks.sort_by { |task| task.created_at}
    elsif order == "ASC"
      @tasks.sort_by { |task| task.created_at}.reverse
    end
  end

end