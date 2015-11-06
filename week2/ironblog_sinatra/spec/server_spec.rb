require_relative '../server.rb'
require 'rack/test'
require 'pry'

describe 'Server Service' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "should load the home page" do
    get '/'
    expect(last_response).to be_ok
  end

  it "should post the home page" do
    post '/'
    expect(last_response).to be_ok
  end

  it "should load the post_details page" do
    get '/post_details/0'
    expect(last_response).to be_ok
  end

  it "should load the new_post page" do
    get '/new_post'
    expect(last_response).to be_ok
  end

  it "should post in the new_post page" do
    post '/new_post'
    expect(last_response).to be_ok
  end


end