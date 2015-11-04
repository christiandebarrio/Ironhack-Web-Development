require_relative '../lib/todolist.rb'
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

  describe "#find_task_by_id" do

    it "returns nil if the task is not found" do
      expect(@tl.find_task_by_id(2)).to eq(nil)
    end

    it "returns the content of the task id 1" do
      @tl.add_task(@task1)
      @tl.add_task(@task2)
      expect(@tl.find_task_by_id(@task1.id)).to eq(@task1)
    end

  end

  describe "#sort_by_created" do

    it "sorted in descending order (task1 - task2)" do
      @tl.add_task(@task1)
      @tl.add_task(@task2)
      ordered_tasks = @tl.sort_by_created("DESC")
      expect(ordered_tasks[0]).to eq(@task1)
    end

    it "sorted in asscending order (task2 - task1)" do
      @tl.add_task(@task1)
      @tl.add_task(@task2)
      ordered_tasks = @tl.sort_by_created("ASC")
      expect(ordered_tasks[0]).to eq(@task2)
    end
  end

end