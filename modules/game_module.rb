require 'json'
require './classes/game'
require 'pry'

module GameModule
  def load_game
    if File.exist?('./json_file/game.json') && File.read('./json_file/game.json') != ''
      JSON.parse(File.read('./json_file/game.json')).map do |game|
        Game.new(game['multiplayer'] , game['last_played_at'])
      end
    else
      []
    end
  end

  def save_game
    items = []
    @game.each do |game|
      items.push({ multiplayer: game.multiplayer, last_played_at: game.last_played_at })
    end
    open('./json_file/game.json', 'w') { |f| f << JSON.generate(items) }
  end
end