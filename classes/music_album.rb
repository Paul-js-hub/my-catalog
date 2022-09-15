require_relative 'item'
class MusicAlbum < Item
  attr_accessor :on_spotify, :name, :archieved, :date

  def initialize(name, date, on_spotify)
    super(date)
    @name = name
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && @on_spotify
  end
end
