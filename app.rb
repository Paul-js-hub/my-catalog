require './classes/book_label_module'

class App
  include BookAndLabel
  def initialize
    @music = []
    @books = []
    @label = []
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
      list_music - albums
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

  # def preserve_data
  #   preserve_books
  #   preserve_music
  #   preserve_games
  # end
end
