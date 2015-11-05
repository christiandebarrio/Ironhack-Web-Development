require_relative '../lib/blog.rb'

RSpec.describe 'blog' do
  
  let(:blog) { Blog.new }

  describe '#add_post' do
    
    it "should return the list with 1 post when add 1 post" do
      expect(blog.add_post("post")).to eq(["post"])
    end
  
  end

  describe '#posts' do
    
    it "should return the list_posts" do
      expect(blog.posts).to eq(blog.list_posts)
    end

    it "Add post and should return the list with 1 post" do
      blog.add_post("post")
      expect(blog.posts).to eq(blog.list_posts)
    end
  end

end