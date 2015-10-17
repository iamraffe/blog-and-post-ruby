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
		paginate = (@current_page * 3)-1
		selected_posts = @posts.slice(paginate, 3)
		selected_posts
	end

	def update_current_page(page)
		if(page.to_s.downcase == "next")
			@current_page+=1
		else
			@current_page = page.to_i
		end
	end

	def publish_front_page(page)
		update_current_page(page)
		sorted_posts = @posts.sort {|a,b| b.date <=> a.date}
		selected_posts = select_posts(sorted_posts)
		selected_posts.each do |post|
			print_post(post)
		end
	end

	def first_page?
		@current_page == 1
	end

	def max_pages
		post_number = @posts.size / 3
		if @posts.size % 3 != 0
			post_number +=1
		end
		post_number 
	end

	def last_page?
		@current_page == max_pages
	end

	def print_pagination_controls
		if first_page?
			puts """
				#{@current_page} #{@current_page+1} #{@current_page+2}

				> next
			"""
		elsif last_page?
			puts """
				#{@current_page-2} #{@current_page-1} #{@current_page}

				"""
		else
			puts """
				#{@current_page-1} #{@current_page} #{@current_page+1}

				> next
				"""
		end
	end
end