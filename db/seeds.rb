author = Author.create(name: 'J.R.R', surname: 'Tolkien')

5.times do
  Book.create(
    title: Faker::Book::title,
    isbn:  Faker::Code::isbn,
    description: Faker::Lorem::paragraph,
    price: Faker::Number.decimal(l_digits: 2),
    author: author
  )
end

author_b = Author.create(name: 'Mark', surname: 'Twain')
3.times do

  Book.create(
    title: Faker::Book::title,
    isbn:  Faker::Code::isbn,
    description: Faker::Lorem::paragraph,
    price: Faker::Number.decimal(l_digits: 2),
    author: author_b
  )
end
