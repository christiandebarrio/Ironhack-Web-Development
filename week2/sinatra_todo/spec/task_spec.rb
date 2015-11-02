require_relative '../sinatra_todo.rb'

describe 'Task' do
  describe 'initialize' do

    it "task with content" do
      expect(Task.new('Walk the dog').content).to eq('Walk the dog')
    end

    it "task with id" do
      expect(Task.new("Other task").id).to eq(2)
    end
  end  
end