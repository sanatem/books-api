class BooksController < ApplicationController

  before_action :set_book, only: %i(show update destroy)
  before_action :set_author, only: %i(create)

  # GET /books
  def index
    query = BookQuery.new
    render json: BookSerializer.new(query.result(search_params)).serialized_json
  end

  # GET /books/1
  def show
    render json: BookSerializer.new(@book)
  end

  # POST /books
  def create
    @book = Book.new(book_params)
    @book.author = @author

    if @book.save
      render json: BookSerializer.new(@book), status: :created, location: @book
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /books/1
  def update
    if @book.update(book_params)
      render json: @book
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  # DELETE /books/1
  def destroy
    if @book.destroy
      render json: { status: 'deleted', message: 'Book deleted successfully' }
    else
      render json: { error: "Book couldn't be deleted" }
    end
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def set_author
    @author = Author.find_or_create_by(author_params)
  end

  def book_params
    params.fetch(:book, {}).permit!
  end

  def author_params
    params.fetch(:author, {}).permit!
  end

  def search_params
    params.permit(:title, :isbn, :author)
  end

end
