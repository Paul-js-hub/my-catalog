require 'json'

def save_book(book)
  File.write('./json_file/book.json', JSON.generate(book))
end

def save_label(label)
  File.write('./json_file/label.json', JSON.generate(label))
end

def load_books
  book_data = File.open('./json_file/book.json')
  JSON.parse(book_data.read)
end

def load_label
  book_data = File.open('./json_file/label.json')
  JSON.parse(book_data.read)
end