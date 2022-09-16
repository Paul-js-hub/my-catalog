class Game
  attr_accessor :multiplayer, :last_played_at
  attr_reader :id, :archieved

  def initialize(multiplayer, last_played_at)
    @id = Random.rand(1..1000)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    super || @last_played_at < 2.years.ago
  end
end
