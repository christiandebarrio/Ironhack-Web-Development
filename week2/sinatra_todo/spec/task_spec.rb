require_relative '../sinatra_todo.rb'

describe "Task" do
  
  before :each do
    @task = Task.new("New task")
  end


  describe "#initialize" do

    it "task with content" do
      expect(@task.content).to eq("New task")
    end

    it "task with id" do
      expect(@task.id).to eq(2)
    end

    it "task created_at returns current time" do
      expect(@task.created_at).to eq(Time.now.strftime "%Y-%m-%d %H:%M:%S")
    end

  end

  describe "complete?" do

    it "when create task complete? has to be false" do
      expect(@task.complete?).to be_falsy
    end

  end

  describe "complete!" do

    it "change complete attribute to true" do
      expect(@task.complete!).to be_truthy
    end

  end

  describe "make_incomplete!" do
    
    it "change complete attribute to false" do
      expect(@task.make_incomplete!).to be_falsy
    end

  end

end