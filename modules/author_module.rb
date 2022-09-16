require 'json'
require './classes/game_author'
require 'pry'

module AuthorModule
  def load_author
    if File.exist?('./json_file/author.json') && File.read('./json_file/author.json') != ''
      JSON.parse(File.read('./json_file/author.json')).map do |author|
        Author.new(author['first_name'], author['last_name'], author['date'])
      end
    else
      []
    end
  end

  def save_author
    items = []
    @author.each do |author|
      items.push({ first_name: author.first_name, last_name: author.last_name, date: author.publish_date })
    end
    open('./json_file/author.json', 'w') { |f| f << JSON.generate(items) }
  end
end
