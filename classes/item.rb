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
    genre.add_item(self)
  end

  def author=(author)
    @author = genre
    author.add_item(self)
  end

  def source=(source)
    @source = source
    source.add_item(self)
  end

  def label=(label)
    @label = label
    label.add_item(self)
  end
end
