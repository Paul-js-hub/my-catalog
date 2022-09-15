require 'json'

def save_book(book)
  File.write('./data/book.json', JSON.generate(book))
end

def save_label(label)
  File.write('./data/label.json', JSON.generate(label))
end

def load_books
  book_data = File.open('./data/book.json')
  JSON.parse(book_data.read)
end

def load_label
  book_data = File.open('./data/label.json')
  JSON.parse(book_data.read)
end
