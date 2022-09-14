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
  end