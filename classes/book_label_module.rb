require_relative 'book'
require_relative 'label'
require 'pry'

module BookAndLabel

  def get_details
    puts "Enter the Label title"
    title = gets.chomp
    puts "Enter the color of the book"
    color = gets.chomp
    puts "Enter date it was published"
    date = gets.chomp
    puts "Enter publisher's name"
    publisher = gets.chomp
    puts "What is the state of the cover"
    puts "Enter 1 if the cover is good or 2 if the cover is bad"
    value = gets.chomp.to_i
    cover_state = ""
    if value == 1
      cover_state = "good"
    elsif value == 2
      cover_state = "bad"
    end
    [title, color, date, publisher, cover_state]
  end

    def add_book
      title, color, date, publisher, cover_state = get_details      
      new_book = Book.new(date, publisher, cover_state)      
      new_label = Label.new(title, color)
      new_label.add_item(new_book)

      new_label.items.each do |item|
        @books << {:title.to_s => item.label.title, :publisher.to_s => item.publisher, 
        :publish_date.to_s => item.publish_date, :cover_state.to_s => item.cover_state}
      end
      
      @label << {:title.to_s => new_label.title, :color.to_s => new_label.color}
      
      puts "Book created successfully"
      
    end

    def list_all_books
      puts 'No list to display' unless @books.length.positive?
      @books.each_with_index do |book,index|        
        puts "#{index+1}) Title: #{book['title']}, Publisher: #{book['publisher']}, Publish Date: #{book['publish_date']}, Cover State: #{book['cover_state']}"
      end
    end

    
  end