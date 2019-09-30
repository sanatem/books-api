require 'rails_helper'

describe 'Books Requests', type: :request do

  it 'creates a new book' do
    books_count = Book.count
    body = { book: {title: "Pepe 2", isbn: "123566775"},
                   author: { name: "J.R.R", surname: "Tolkien" }
           }
    post '/books', params: body
    expect(Book.count).to eq(books_count + 1)
  end

  it 'deletes a book' do
    book = create(:book)
    books_count = Book.count
    delete "/books/#{book.id}"
    expect(Book.count).to eq(books_count - 1)
  end
end
