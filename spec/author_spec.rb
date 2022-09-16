require './classes/game_author'

describe Author do
  before :each do
    @author = Author.new('first_name', 'last_name', Time.new(2022 - 0o2 - 0o2))
  end

  describe '#author' do
    it 'should be an instance of author' do
      author_one = Author.new('first_name', 'last_name', Time.new(2022 - 0o2 - 0o2))
      expect(author_one).to be_an_instance_of Author
    end

    it 'should be an instance of author' do
      expect(@author.publish_date).to eq Time.new(2022 - 0o2 - 0o2)
    end
  end
end