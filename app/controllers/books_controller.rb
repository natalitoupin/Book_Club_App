class BooksController < ApplicationController

	def index
		@books = params[:q] ? Books.search_for(params[:q]) : Books.all
	end

	def show
		@book = Books.find params[:id]
		@omment = Comment.new
	end
end

# 	def new
# 		@book = Book.new
# 	end

  
# end
# class StoriesController < ApplicationController
#   before_action :authenticate_user!, only: [:new, :create]

#   def index
#     @stories = params[:q] ? Story.search_for(params[:q]) : Story.all
#   end

#   def hot
#     @stories = Story.popular
#   end

#   def show
#     @story = Story.find params[:id]
#     @comment = Comment.new
#   end

#   def new
#     @story = Story.new
#   end

#   def create
#     safe_story_params = params.require(:story).permit(:title, :link, :category).merge(user_id: current_user.id)
#     @story = Story.new safe_story_params.merge(:upvotes => 1)
#     #@story.user = current_user

#     if @story.save
#       redirect_to @story
#     else
#       render :new
#     end
#   end
# end