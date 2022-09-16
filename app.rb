require './classes/book_label_module'
require './storage/save_book_label'
require './modules/author_module'
require './modules/game_module'
require_relative './modules/music_module'
require_relative './modules/genre_module'
require_relative './classes/music_album'
require_relative './classes/game_author'
require_relative './classes/game'

class App
  include BookAndLabel
  include MusicModule
  include GenreModule
  include GameModule
  include AuthorModule

  def initialize
    @books = load_books
    @label = load_label
    @music = load_music
    @genres = load_genre
    @game = load_game
    @author = load_author
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
      puts 'Genre'
      puts "Name: #{genre.name}"
    end
  end

  def save_data
    save_music
    save_genre
    save_author
    save_game
  end

  def list_all_games
    @game.each do |game|
      puts "Multiplayer: #{game.multiplayer}, Last Played: #{game.last_played_at}"
    end
  end

  def list_all_authors
    @author.each do |author|
      puts "Name: #{author.first_name} #{author.last_name}"
    end
  end

  def add_game
    puts 'Please add the author first name'
    first_name = gets.chomp

    puts 'Please add the author last name'
    last_name = gets.chomp

    puts 'Is it multiplayer'
    multiplayer = gets.chomp.downcase == 'y' || false

    puts 'Please enter the last played date in the format [yyyy-mm-dd]'
    last_played_at = gets.chomp

    puts 'Please add the date published'
    date = gets.chomp

    @game << Game.new(multiplayer, last_played_at)
    @author << Author.new(first_name, last_name, date)

    puts 'Game added successfully'
  end
end
