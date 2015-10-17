require 'date'

class Post
	attr_reader :title, :date, :text, :sponsored

	def initialize(title, date, text, sponsored = false)
		@title = title
		@date = Date.jd(date.to_i)
		@text = text
		@sponsored = sponsored
	end
end