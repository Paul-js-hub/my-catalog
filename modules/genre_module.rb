require 'json'
require './classes/genre'

module GenreModule
  def load_genre
    if File.exist?('./json_file/genre.json') && File.read('./json_file/genre.json') != ''
      JSON.parse(File.read('./json_file/genre.json')).map do |genre|
        Genre.new(genre['name'])
      end
    else
        []
    end
  end

  def save_genre
    items = []
    @genres.each do |genre|
        items.push({name: genre.name})
    end
    open('./json_file/genre.json', 'w') { |f| f << JSON.generate(items) }
  end
end