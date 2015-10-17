require_relative "blog.rb"
require_relative "post.rb"

blog = Blog.new
blog.add_post Post.new('Post Title 1', '2451944', 'Post Text 1')
blog.add_post Post.new('Post Title 2', '2651944', 'Post Text 2', true)
blog.add_post Post.new('Post Title 3', '2351944', 'Post Text 3')
blog.add_post Post.new('Post Title 4', '2453334', 'Post Text 1')
blog.add_post Post.new('Post Title 6', '2651444', 'Post Text 2', true)
blog.add_post Post.new('Post Title 5', '2351194', 'Post Text 3')
blog.add_post Post.new('Post Title 7', '2451914', 'Post Text 1')
blog.add_post Post.new('Post Title 8', '2651224', 'Post Text 2', true)
blog.add_post Post.new('Post Title 9', '2351344', 'Post Text 3')
blog.add_post Post.new('Post Title 6', '26444', 'Post Text 2', true)
blog.add_post Post.new('Post Title 5', '22351194', 'Post Text 3')
blog.add_post Post.new('Post Title 7', '242114', 'Post Text 1')
blog.add_post Post.new('Post Title 8', '26224', 'Post Text 2', true)
blog.add_post Post.new('Post Title 9', '351344', 'Post Text 3')
blog.publish_front_page(1)
while true
	blog.print_pagination_controls
	page = gets.chomp
	blog.publish_front_page(page)
end