require_relative "blog.rb"
require_relative "post.rb"

blog = Blog.new
blog.add_post Post.new('Post Title 1', '2451944', 'Post Text 1')
blog.add_post Post.new('Post Title 2', '2651944', 'Post Text 2')
blog.add_post Post.new('Post Title 3', '2351944', 'Post Text 3')

blog.publish_front_page