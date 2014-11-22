class BooksController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @books = params[:q] ? Books.search_for(params[:q]) : Books.all
  end

  def show
    @book = Books.find params[:id]
    @omment = Comment.new
  end

  def new
    @book = Book.new
  end

def create
    @book = Book.new(params.require(:book).permit(:title, :author, :likes, :dislikes, :description))
    if @books.save
      redirect_to @books, notice: "New Book Created!"
    else
      render :new
    end
  end

end

