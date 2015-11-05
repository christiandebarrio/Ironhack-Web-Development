class Blog
  attr_accessor :list_posts

  def initialize
    @list_posts = []
  end

  def add_post post
    @list_posts << post
  end

  def posts
    @list_posts
  end
end