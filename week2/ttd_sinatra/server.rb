require 'sinatra'
#require 'sinatra/reloader'

get "/" do
  "Hello world"
end

get '/real_page' do
 "real page"
end

get '/hi' do
  redirect('/real_page')
end