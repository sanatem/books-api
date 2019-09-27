class BookSerializer

  include FastJsonapi::ObjectSerializer

  attributes :title, :isbn, :price, :description

  attributes :author do |object|
    AuthorSerializer.new(object.author)
  end

end
