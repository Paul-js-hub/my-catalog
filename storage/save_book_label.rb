require 'json'

def save_book(book)
  File.write('./data/book.json', JSON.generate(book))
end
  
  def save_label(book)
    File.write('./data/label.json', JSON.generate(book))
  end