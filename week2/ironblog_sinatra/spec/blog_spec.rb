require_relative '../lib/blog.rb'
require_relative '../lib/post.rb'

RSpec.describe 'blog' do
  
  before :each do
    @blog = Blog.new
    @post1 = Post.new("Título Post1", "Texto del primer post1")
    @post2 = Post.new("Título Post2", "Texto del primer post2")
    @post3 = Post.new("Título Post3", "Texto del primer post3")
  end

  describe '#add_post' do
    
    it "should return the list with 1 post when add 1 post" do
      expect(@blog.add_post(@post1)).to eq([@post1])
    end
  
  end

  describe '#posts' do
    
    it "should return the list_posts" do
      expect(@blog.posts).to eq(@blog.list_posts)
    end

    it "Add post and should return the list with 1 post" do
      @blog.add_post(@post1)
      expect(@blog.posts).to eq(@blog.list_posts)
    end
  end

  describe "#latest_posts" do

    it "Add two posts and order the latest first" do
      @blog.add_post(@post1)
      @blog.add_post(@post2)
      @blog.latest_posts
      expect(@blog.posts[0]).to eq(@post2)
    end
  end

end