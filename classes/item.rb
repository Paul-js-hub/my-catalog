require 'date'

class Item
  attr_reader :genre, :author, :source, :label
  attr_accessor :publish_date, :archieved

  def initialize(date, archieved: false)
    @id = Random.rand(1..1000)
    @publish_date = date
    @archieved = archieved
  end

  def genre=(genre)
    @genre = genre
    genre.items << self unless genre.items.include?(self)
  end

  def author=(author)
    @author = genre
    author.items << self unless author.items.include?(self)
  end

  def source=(source)
    @source = source
    source.items << self unless source.items.include?(self)
  end

  def label=(label)
    @label = label
    label.items << self unless label.items.include?(self)
  end

  def can_be_archived?
    (Date.today - Date.parse(@publish_date)) / 365 > 10
  end

  def move_to_archive
    @archieved = true if can_be_archived?
  end
end
