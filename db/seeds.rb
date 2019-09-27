author = Author.new(name: 'J.R.R', surname: 'Tolkien')

5.times do
  Book.create(
    title: Faker::Book::title,
    isbn:  Faker::Code::isbn,
    description: Faker::Lorem::sentence,
    price: Faker::Number.decimal(l_digits: 2),
    author: author
  )
end
