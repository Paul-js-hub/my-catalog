require 'json'
require './classes/music_album'

module MusicModule
  def load_music
    if File.exist?('./json_file/music.json') && File.read('./json_file/music.json') != ''
      JSON.parse(File.read('./json_file/music.json')).map do |music|
        MusicAlbum.new(music['name'], music['publish_date'], music['on_spotify'])
      end
    else
      []
    end
  end

  def save_music
    items = []
    @music.each do |mus|
      items.push({ name: mus.name, publish_date: mus.publish_date, on_spotify: mus.on_spotify })
    end
    open('./json_file/music.json', 'w') { |f| f << JSON.generate(items) }
  end
end
