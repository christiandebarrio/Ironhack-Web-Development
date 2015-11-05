require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require_relative './lib/blog.rb'
require_relative './lib/post.rb'

blog = Blog.new
post1 = Post.new("Título Post1", "Texto del primer post1")
post2 = Post.new("Título Post2", "Texto del primer post2")
post3 = Post.new("Título Post3", "Texto del primer post3")
blog.add_post(post1)
blog.add_post(post2)
blog.add_post(post3)
time_format = "%Y-%m-%d - %H:%M"

get "/" do
  @posts = blog.latest_posts
  @time_format = time_format
  erb(:home)
end

get "/post_details/:index" do
  @index = params[:index].to_i
  @posts = blog.latest_posts
  @time_format = time_format
  erb(:post_details)
end
