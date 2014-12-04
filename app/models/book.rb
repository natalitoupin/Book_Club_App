class Book < ActiveRecord::Base
	belongs_to :user
	has_many :comments

	def self.search_for(query)
		where('title LIKE :query OR description LIKE :query', query: "%#{query}%")
	end
end
