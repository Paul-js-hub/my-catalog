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

def save_game(game) 
  File.write('./json_file/game.json', JSON.generate(game))
end

def save_author(author)
  File.write('./json_file/author.json', JSON.generate(author))
end
