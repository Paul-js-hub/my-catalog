require './classes/book_label_module'
require_relative './modules/music_module'
require_relative './modules/genre_module'
require_relative './classes/music_album'

class App
  include BookAndLabel
  include MusicModule
  include GenreModule
  def initialize
    @music = load_music
    @books = []
    @label = []
    @genres = load_genre
  end

  def handle_enter_action(action)
    case action
    when 1..6
      handle_list_all_items(action)
    when 7
      add_book
    when 8
      add_music_album
    when 9
      add_game
    else
      puts 'Enter a number between 1 and 10'
    end
  end

  def handle_list_all_items(action)
    case action
    when 1
      list_all_books
    when 2
      list_music_albums
    when 3
      list_all_games
    when 4
      list_all_genres
    when 5
      list_all_labels
    when 6
      list_all_authors
    end
  end

  def add_music_album
    puts 'Please add a music album name'
    name = gets.chomp

    puts 'Please enter the publish date in the format [yyyy-mm-dd]'
    publish_date = gets.chomp

    puts 'Is it on spotify'
    on_spotify = gets.chomp.downcase == 'y' || false
    
    @genres << Genre.new(name)
    @music << MusicAlbum.new(name, publish_date, on_spotify)
    puts 'Music added successfully'
  end

  def list_music_albums
    @music.each do |item|
      puts "Name: #{item.name}, Publish Date: #{item.publish_date}, spotify: #{item.on_spotify}"
    end
  end

  def list_all_genres
    @genres.each do |genre|
      puts "Genre"
      puts "Name: #{genre.name}"
    end
  end

  def save_data
    save_music
    save_genre
  end
end
