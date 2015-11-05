require 'rspec'
require_relative '../stubs_and_fakes'
require 'pry'

RSpec.describe 'WordChecker' do

  # @subjects = [
  #     "urgent",
  #     "very urgent",
  #     "good morning",
  #     "very important",
  #     "I love good morning"
  #   ]

  describe 'check' do

    it "should return false if no subject given" do
      provider = EmailProviderFake.new(Array.new)
      checker = WordChecker.new(provider)
      expect(checker.check([])).to eq(true)
    end

    it "should return true when a word is included in subject" do
      provider = EmailProviderFake.new([])
      checker = WordChecker.new(provider)
      expect(checker.check(["hello"])).to eq(false)
    end

  end

end
