require_relative '../server.rb'
require 'rack/test'

describe 'Server Service' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "should load the home page" do
    get '/'
    expect(last_response).to be_ok
  end

  it "should load the post_details page" do
    get '/post_details/0'
    expect(last_response).to be_ok
  end

end