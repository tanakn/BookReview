class BooksController < ApplicationController
  def index
    @books =Book.all
    render :index
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:success] = '登録成功！'
      redirect_to @book
    else
      redirect_to @book
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:success] = '更新成功！'
      redirect_to @book
    else
      redirect_to @book
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
      flash[:success] = 'バルス！'
      redirect_to books_url
    else
      flash[:failed] = 'ノーバルス'
      redirect_to books_url
    end
  end

  private
  def book_params
    params.require(:book).permit(:isbn,:title,:price,:publish,:published,:dl)
  end
end
