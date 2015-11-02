require_relative '../sinatra_todo.rb'

describe "Task" do
  describe "#initialize" do

    it "task with content" do
      expect(Task.new('Walk the dog').content).to eq('Walk the dog')
    end

    it "task with id" do
      expect(Task.new("Other task").id).to eq(2)
    end

  end

  describe "complete?" do

    it "when create task complete? has to be false" do
      expect(Task.new("Go home").complete?).to be_falsy
    end

  end

  describe "complete!" do

    it "change complete attribute to true" do
      expect(Task.new("New task 1").complete!).to be_truthy
    end

  end

  describe "make_incomplete!" do
    
    it "change complete attribute to false" do
      expect(Task.new("New task 2").make_incomplete!).to be_falsy
    end

  end

end