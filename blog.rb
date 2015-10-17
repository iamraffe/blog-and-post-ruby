require "pry"
class Blog
	def initialize(posts = [])
		@posts = posts
	end

	def add_post(post)
		@posts.push(post)
	end

	def publish_front_page
		sorted_posts = @posts.sort {|a,b| b.date <=> a.date}
		sorted_posts.each do |post|
			puts "#{post.title}\n**************\n#{post.text}\n----------------\n#{post.date}\n----------------\n"
		end
	end
end