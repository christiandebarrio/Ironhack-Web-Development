require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

enable(:sessions)

get "/" do
  "My first Sinatra app."  
end

get "/about" do
  "I'm Christian from Ironhack"
end

get "/author" do
  @gretting = "Hello world"

  erb(:author)
end

get "/time"  do
  erb(:time)
end

get "/hours/ago/:hours" do
  @hour = params[:hours].to_i
  @time_now = Time.now
  @time =  @time_now - @hour * 60 * 60
  @time_ago = @time.strftime "%H:%M:%S"

  erb(:hours_ago)
end

get "/pizza" do
  @ingredients = ["cheese", "pepperoni", "mushrooms"]

  erb(:pizza)
end

get "/pizza/:pizzaname" do
  @ingredients = ["cheese", "pepperoni", "mushrooms"]
  @pizza_name = params[:pizzaname]

  erb(:pizza)
end

get "/session_test/:text" do
  text = params[:text]
  session[:saved_value] = text
  redirect '/session_test_show'
end

get "/session_test_show" do
  session[:saved_value]
end

get "/login" do

  erb(:login)
end

post "/login" do
  user = params[:user]
  password = params[:password]

  Login.check_user_password?(user, password)
end