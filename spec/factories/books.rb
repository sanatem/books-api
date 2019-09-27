FactoryBot.define do
  factory :book do
    title       { Faker::Book::title }
    isbn        { Faker::Code::isbn }
    description { Faker::Lorem::paragraph }
    price       { Faker::Number.decimal(l_digits: 2) }
  end
end
