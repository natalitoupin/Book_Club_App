class BooksController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :destroy]

  def index
    @books = Book.all
  end

  def show
    @book = Book.find params[:id]
    @comment = Comment.new
  end

  def search
    @books = Book.search_for(params[:q])
    render :index
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

def destroy
  @book = Book.find params[:id]
  if @book.destroy
    notice = "Book Deleted"
  else
    notice = "Sorry can't delete" 
  end
  redirect_to books_path, notice: notice
end

end

