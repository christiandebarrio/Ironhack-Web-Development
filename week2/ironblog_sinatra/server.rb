require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require_relative './lib/blog.rb'
require_relative './lib/post.rb'

my_blog = Blog.new
post1 = Post.new("Título Post1", "Texto del primer post1")
post2 = Post.new("Título Post2", "Texto del primer post2")
post3 = Post.new("Título Post3", "Texto del primer post3")
my_blog.add_post(post1)
my_blog.add_post(post2)
my_blog.add_post(post3)

get "/" do
  @my_posts = my_blog.latest_posts
  @time_format = "%Y-%m-%d ··· %H:%M"
  erb(:home)
end
