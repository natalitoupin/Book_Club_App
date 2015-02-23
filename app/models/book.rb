class Book < ActiveRecord::Base
	belongs_to :user
	has_many :comments

	def self.search_for(query)
		where('title LIKE :query OR description LIKE :query', query: "%#{query}%")
	end

	def amazon_search_url
		"http://www.amazon.com/s?index=books&field-title=#{self.title.split.join('+')}"
	end
end
