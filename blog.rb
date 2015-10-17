require "pry"
class Blog
	attr_accessor :current_page

	def initialize(posts = [])
		@posts = posts
		@current_page = 1
	end

	def add_post(post)
		@posts.push(post)
	end

	def print_post(post)
			if post.sponsored
				puts "******#{post.title}******"
			else
				puts "#{post.title}"
			end
				print "**************\n#{post.text}\n----------------\n#{post.date}\n----------------\n"
	end

	def select_posts(posts)
		paginate = @current_page * 3
		[posts[paginate-3],posts[paginate-2],posts[paginate-1]]
	end

	def publish_front_page
		sorted_posts = @posts.sort {|a,b| b.date <=> a.date}
		selected_posts = select_posts(sorted_posts)
		selected_posts.each do |post|
			print_post(post)
		end
	end
end