require './classes/label'
require './classes/book'

describe Label do
  context 'test Label class' do
    before :each do
      @new_label = Label.new('Die hard', 'red')
      @new_book = Book.new('25/01/2011', 'Oxford', 'good')
    end

    describe '#new' do
      it 'returns a new Label object' do
        @new_label.should be_an_instance_of Label
      end
    end

    describe '#add_item' do
      it 'increases the length of the item array' do
        @new_label.add_item(@new_book)
        expect(@new_label.items).to respond_to(:length)
      end
    end

    describe '#Label object attribute' do
      it 'check the attributes of Label objects' do
        expect(@new_label).to have_attributes(title: 'Die hard', color: 'red')
      end
    end

    describe '#item.label' do
      it 'check item.label contains any attribute of self' do
        @new_label.add_item(@new_book)
        expect(@new_book.label).to have_attributes(color: 'red')
      end
    end
  end
end
