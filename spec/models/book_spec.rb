require 'rails_helper'

RSpec.describe Book, type: :model do
  let(:book) { build(:book) }

  it 'is created correctly' do
    expect(book).to_not be_nil
  end
end
