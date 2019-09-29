require 'rails_helper'

RSpec.describe Author, type: :model do
  let(:author) { build(:author) }

  it 'is created correctly' do
    expect(author).to_not be_nil
  end

  context 'Failure cases' do
    let(:author) { create(:author) }

    it "shouldn't create author with the same surname and name" do
      new_author = build(:author, surname: author.surname, name: author.name)
      new_author.valid?
      expect(new_author).to_not be_valid
      expect(new_author.errors).to include :surname

      author_brother = build(:author, surname: author.surname, name: 'Author brother')
      author_brother.valid?
      expect(author_brother).to be_valid
    end
  end
end
