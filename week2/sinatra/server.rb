require 'sinatra'
require 'pry'

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