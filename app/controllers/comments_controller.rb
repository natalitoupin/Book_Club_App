class CommentsController < ApplicationController
	before_action :authenticate_user!

	def create
		@comment = Comment.new(params.require(:comment).permit(:body).merge(user_id: current_user.id, book_id: params))
		@comment.book = Book.find(params[:id])

		if @comment.save
			redirect_to @comment.book
		else
			redirect_to root_path
		end
	end
end
