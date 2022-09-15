require_relative 'book'
require_relative 'label'
require './storage/save_book_label'


module BookAndLabel
  def extract_details
    puts 'Enter the Label title'
    title = gets.chomp.capitalize
    puts 'Enter the color of the book'
    color = gets.chomp
    puts 'Enter date it was published'
    date = gets.chomp
    puts "Enter publisher's name"
    publisher = gets.chomp.capitalize
    puts 'Enter 1 if the cover is good or 2 if the cover is bad'
    value = gets.chomp.to_i
    cover_state = ''

    case value
    when 1
      cover_state = 'good'
    when 2
      cover_state = 'bad'
    else
      puts 'Wrong value! Enter 1 or 2'
    end
    [title, color, date, publisher, cover_state]
  end

  def add_book
    title, color, date, publisher, cover_state = extract_details
    new_book = Book.new(date, publisher, cover_state)
    new_label = Label.new(title, color)
    new_label.add_item(new_book)

    new_label.items.each do |item|
      @books << { :title.to_s => item.label.title, :publisher.to_s => item.publisher,
                  :publish_date.to_s => item.publish_date,
                  :cover_state.to_s => item.cover_state }
    end
    save_book(@books)
    @label << { :title.to_s => new_label.title, :color.to_s => new_label.color }
    save_label(@label)
    puts 'Book created successfully'
  end

  def list_all_books
    puts 'No list to display' unless @books.length.positive?
    @books.each_with_index do |book, index|
      puts "#{index + 1}) Title: #{book['title']}, Publisher: #{book['publisher']},
       Publish Date: #{book['publish_date']}, Cover State: #{book['cover_state']}"
    end
  end

  def list_all_labels
    puts 'No list to display' unless @label.length.positive?
    @label.each_with_index do |label, index|
      puts "#{index + 1}) #{label['title']}"
    end
  end
end
