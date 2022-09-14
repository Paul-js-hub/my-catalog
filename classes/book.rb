require_relative 'item'

class Book < Item
  attr_accessor :publisher, :cover_state, :date
  attr_reader :id, :archieved

  def initialize(date, publisher, cover_state, archieved: false)
    super(date)
    @id = Random.rand(1..1000)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    super || @cover_state == 'bad'
  end
end
