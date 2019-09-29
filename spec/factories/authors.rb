FactoryBot.define do
  factory :author do
    name       { Faker::Name.name }
    surname    { Faker::Name.last_name }
  end
end
