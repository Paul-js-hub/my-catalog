require './classes/book'

describe Book do
  context "test Book class" do
    before :each do
    @new_book = Book.new('25/01/2011', 'Oxford', 'good')
    end

    describe '#new' do
    it 'returns a new Book object' do
      @new_book.should be_an_instance_of Book
    end
  end

  describe "#can_be_archived?" do
    it "returns true if published date is more than 10 year or the cover is bad" do
      expect(@new_book.can_be_archived?).to be_truthy
    end
  end

  describe "#moved_to_archieve" do
    it "changes the status of archived to true if can_be_archived? is true" do
      @new_book.move_to_archive
      expect(@new_book.archieved).to be_truthy
    end
  end

  describe "#publisher" do
  it 'Book publisher should return Oxford' do
    expect(@new_book.publisher).to eq 'Oxford'
  end
end

describe "#publish_date" do
  it 'Book publish date should return Oxford' do
    expect(@new_book.publish_date).to eq '25/01/2011'
  end
end

describe "#cover_state" do
  it 'Book cover state should return good' do
    expect(@new_book.cover_state).to eq 'good'
  end
end

  end
end