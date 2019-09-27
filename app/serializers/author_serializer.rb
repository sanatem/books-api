class AuthorSerializer

  include FastJsonapi::ObjectSerializer
  attributes :name, :surname

end
