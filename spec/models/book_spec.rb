require 'rails_helper'

RSpec.describe Book, type: :model do
  let(:book) { build(:book) }

  it 'is created correctly' do
    expect(book).to_not be_nil
  end

  context 'Failure cases' do
    let(:book) { create(:book) }

    it "shouldn't create book with the same title" do
      title = book.title
      new_book = build(:book, title: title)
      new_book.valid?
      expect(new_book).to_not be_valid
      expect(new_book.errors).to include :title
    end

    it "shouldn't create book with same title and isbn" do
      isbn = book.isbn
      new_book = build(:book, isbn: isbn)
      new_book.valid?
      expect(new_book).to_not be_valid
      expect(new_book.errors).to include :isbn   
    end
  end
end
