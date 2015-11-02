require_relative '../sinatra_todo.rb'
require 'pry'

describe "TodoList" do

  before :each do
    @tl = TodoList.new
    @task1 = Task.new("New task 1")
    @task2 = Task.new("New task 2")
  end

  describe "#add_task" do

    it "add a task returns tasks array length 1" do
      @tl.add_task(@task1)
      expect(@tl.tasks.length).to eq(1)
    end

    it "add 2 tasks returns tasks array length 2" do
      @tl.add_task(@task1)
      @tl.add_task(@task2)
      expect(@tl.tasks.length).to eq(2)
    end

    it "add task and the tasks array length increment 1" do
      number_of_tasks = @tl.tasks.length
      @tl.add_task(@task1)
      expect(@tl.tasks.length).to eq(number_of_tasks + 1)
      

    end

  end

  describe "#delete_task" do

    it "delete task and the tasks array length minus 1" do
      @tl.add_task(@task1)
      number_of_tasks = @tl.tasks.length
      @tl.delete_task(@task1)
      expect(@tl.tasks.length).to eq(number_of_tasks - 1)
    end

  end

end