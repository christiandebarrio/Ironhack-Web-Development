require 'pry'
require 'rspec'

class Task
  attr_reader :content, :id, :created_at

  @@current_id = 1

  def initialize(content)
    @content = content
    @id = @@current_id
    @@current_id += 1
    @complete = false
    @created_at = Time.now.strftime "%Y-%m-%d %H:%M:%S"
  end

  def complete?
    @complete
  end

  def complete!
    @complete = true
  end

  def make_incomplete!
    @complete = false
  end
end