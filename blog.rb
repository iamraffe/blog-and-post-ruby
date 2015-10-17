require "pry"
class Blog
	def initialize(posts = [])
		@posts = posts
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

	def publish_front_page
		sorted_posts = @posts.sort {|a,b| b.date <=> a.date}
		sorted_posts.each do |post|
			print_post(post)
		end
	end
end