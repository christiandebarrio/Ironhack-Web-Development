require 'rspec'

class StringCalculator

	def add number_string
    @number_string = number_string.gsub("\n", ",").split(",")
    result = 0
    @number_string.each do |digit|
      result += digit.to_i
    end
    result
  end

end


RSpec.describe "String calculator" do
  before :each do
    @calculator = StringCalculator.new
  end
  
  it "returns 0 for an empty string" do
    expect(@calculator.add("")).to eq(0)
  end

  it "returns 6 for '1,2,3' string" do
    expect(@calculator.add("1,2,3")).to eq(6)
  end

  it "returns 12 for '1,2,3,6' string" do
    expect(@calculator.add("1,2,3,6")).to eq(12)
  end

  it "returns 12 for '1,2\n3\n6' string" do
    expect(@calculator.add("1,2\n3\n6")).to eq(12)
  end
end