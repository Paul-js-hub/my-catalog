class Game
  attr_accessor :title, :author
  attr_reader :players

# Basic set-up = 

    def initialize(title, author)
      @title = title
      @author = author
      @players = []
    end


    def add_player(player)
        @players << player
        end
