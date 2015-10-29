require "pry"
require "colorize"

class Blog
	def initialize
		@array_posts = []
		@page = 1
	end

	def add_post(post)
		@array_posts.push(post)
	end

	def sort_by_date
		@array_posts.sort! do |post1, post2|
			post2.date <=> post1.date
		end
	end

	def show_post(post)
		if post.sponsored == true
			puts "\n*****#{post.tittle}*****\n***************\n#{post.text}\n---------------"
		else
			puts "\n#{post.tittle}\n***************\n#{post.text}\n---------------"
		end
	end

	def number_of_pages
		if @array_posts.length % 3 == 0
			@number_of_pages = (@array_posts.length / 3)
		else
			@number_of_pages = (@array_posts.length / 3 + 1)
		end
	end

	def show_nav_with_color_pages
		1.upto(@number_of_pages) do |page|
			if page == @page
				print "#{page}     ".red
			else
				print "#{page}     "
			end
		end	
	end

	def create_front_page
		index_out = @page * 3
		index_in = index_out - 3
	#	binding.pry
		@array_posts.each_with_index do |post, index|
			if index >= index_in && index < index_out
				show_post(post)
			end
		end
		show_nav_with_color_pages
		navigate_pages
	end

	def navigate_pages
		puts "\nselect prev, next or exit"
		select_navigate = gets.chomp
		if select_navigate == "next"
			@page += 1
			if @page > @number_of_pages
				@page = @number_of_pages
				puts "\nYou're in the last page."
				create_front_page
			else
				create_front_page
			end
		elsif select_navigate == "prev"
			@page -= 1
			if @page < 1
				@page = 1
				puts "\nYou're in the first page."
				create_front_page
			else
				create_front_page
			end
		elsif select_navigate == "exit"
			return
		else
			puts "Don't understand you. Could you retry?"
			navigate_pages
		end
			
	end

	def publish_front_page
		number_of_pages
		sort_by_date
		create_front_page
	end
end

class Post
	attr_accessor :tittle, :date, :text, :sponsored

	def initialize(tittle, date, text, sponsored = false)
		@tittle = tittle
		@date = date
		@text = text
		@sponsored = sponsored
	end

end

blog = Blog.new
blog.add_post Post.new("Post tittle 1", '2015-10-25', "Post 1 text")
blog.add_post Post.new("Post tittle 2", '2015-10-26', "Post 2 text", true)
blog.add_post Post.new("Post tittle 3", '2015-10-27', "Post 3 text")
blog.add_post Post.new("Post tittle 4", '2015-10-28', "Post 4 text", true)
blog.add_post Post.new("Post tittle 5", '2015-10-29', "Post 5 text", true)
blog.add_post Post.new("Post tittle 6", '2015-10-30', "Post 6 text")
blog.add_post Post.new("Post tittle 7", '2015-11-1', "Post 7 text", true)
blog.add_post Post.new("Post tittle 8", '2015-11-2', "Post 8 text")

blog.publish_front_page
