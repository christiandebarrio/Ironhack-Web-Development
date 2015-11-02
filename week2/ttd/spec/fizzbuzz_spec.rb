require_relative '../fizzbuzz.rb'

RSpec.describe "FizzBuzz" do

  let (:fizzbuzz) { FizzBuzz.new }

	it "number 1 returns number 1" do
    expect(fizzbuzz.check(1)).to eq(1)
  end

  it "number 3 is divisible by 3 returns Fizz" do
    expect(fizzbuzz.check(3)).to eq("Fizz")
  end

  it "number 5 is divisible by 5 returns Buzz" do
    expect(fizzbuzz.check(5)).to eq("Buzz")
  end

  it "number 15 is divisible by 3 and 5 returns FizzBuzz" do
    expect(fizzbuzz.check(15)).to eq("FizzBuzz")
  end

  it "number 14 is divisible by 7 returns Nike" do
    expect(fizzbuzz.check(14)).to eq("Nike")
  end

  it "number 21 begins with 2 returns Vodafone" do
    expect(fizzbuzz.check(21)).to eq("Vodafone")
  end

end