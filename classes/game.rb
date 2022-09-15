class Game
  attr_accessor :multiplayer, :last_played_at, :date
  attr_reader :id, :archieved

  def initialize(multiplayer, _last_played_at)
    super(date)
    @id = Random.rand(1..1000)
    @multiplayer = multiplayer
    @last_played_at = date
  end

  def can_be_archived?
    super || @last_played_at < 2.years.ago
  end
end
