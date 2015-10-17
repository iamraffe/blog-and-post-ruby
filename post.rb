require 'date'

class Post
	attr_reader :title, :date, :text

	def initialize(title, date, text)
		@title = title
		@date = Date.jd(date.to_i)
		@text = text
	end
end