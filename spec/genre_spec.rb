require './classes/genre'
require './classes/item'
describe Genre do
  context 'It should create genre and add items' do
    genre1 = Genre.new('Comedy')
    it 'Should return an instance of Genre' do
      expect(genre1.name).to eq 'Comedy'
    end

    it 'should add the input item to the collection of items' do
      item = Item.new('2022-07-09')
      genre1.add_item(item)
      expect(genre1.items.length).to eq 1
    end
  end
end
