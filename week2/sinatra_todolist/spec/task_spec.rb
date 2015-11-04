require_relative '../lib/task.rb'

describe "Task" do
  
  before :each do
    @task = Task.new("New task")
    @time_format = "%Y-%m-%d %H:%M:%S"
  end


  describe "#initialize" do

    it "task with content" do
      expect(@task.content).to eq("New task")
    end

    it "task with id" do
      expect(@task.id).to eq(2)
    end

    it "task created_at returns current time" do
      expect(@task.created_at.strftime(@time_format)).to eq(Time.now.strftime(@time_format))
    end

  end

  describe "#complete?" do

    it "when create task complete? has to be false" do
      expect(@task.complete?).to be_falsy
    end

  end

  describe "#complete!" do

    it "change complete attribute to true" do
      @task.complete!
      expect(@task.complete?).to be_truthy
    end

  end

  describe "#make_incomplete!" do
    
    it "change complete attribute to false" do
      @task.make_incomplete!
      expect(@task.complete?).to be_falsy
    end

  end

  describe "#update_content!" do

    it "update the task's content to 'Show me the money'" do
      expect(@task.update_content!("Show me the money")).to eq("Show me the money")
    end

    it "when updated content the updated_at returns current time" do
      @task.update_content!("Show me the money")
      expect(@task.updated_at.strftime(@time_format)).to eq(Time.now.strftime(@time_format))
    end

  end

end