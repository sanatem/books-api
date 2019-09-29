class Author < ApplicationRecord

  has_many :books
  validates :surname, presence: true
  validates :surname, presence: true, uniqueness: { scope: :name }

end
