require './classes/game'

describe Game do
  before :each do
    @game = Game.new('multiplayer', Time.new(2022 - 0o2 - 0o2))
  end

  describe '#game' do
    it 'should be an instance of game' do
      game_one = Game.new('multiplayer', Time.new(2022 - 0o2 - 0o2))
      expect(game_one).to be_an_instance_of Game
    end

    it 'should be an instance of game' do
      expect(@game.last_played_at).to eq Time.new(2022 - 0o2 - 0o2)
    end
  end
end