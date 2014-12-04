class BooksController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @books = Book.search_for(params[:q])
  end

  def show
    @book = Book.find params[:id]
    @comment = Comment.new
  end

  def new
    @book = Book.new
  end

def create
    @book = Book.new(params.require(:book).permit(:title, :author, :likes, :dislikes, :description).merge(user_id: current_user.id))
    if @book.save
      redirect_to @book, notice: "New Book Created!"
    else
      render :new
    end
  end

end

