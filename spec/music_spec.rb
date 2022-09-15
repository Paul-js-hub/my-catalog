require './classes/music_album'

describe MusicAlbum do
  before :each do
    @music_album = MusicAlbum.new('name', Time.new(2022-02-02), true)
  end

  describe '#music' do
    it 'should be an instance of music album' do
        music_1 = MusicAlbum.new('name', Time.new(2022-02-02), true)
        expect(music_1).to be_an_instance_of MusicAlbum
    end

    it 'should be an instance of music album' do
        expect(@music_album.publish_date).to eq Time.new(2022-02-02)
    end
  end
end