require './classes/music_album'

describe MusicAlbum do
  before :each do
    @music_album = MusicAlbum.new('name', Time.new(2022 - 0o2 - 0o2), true)
  end

  describe '#music' do
    it 'should be an instance of music album' do
      music_one = MusicAlbum.new('name', Time.new(2022 - 0o2 - 0o2), true)
      expect(music_one).to be_an_instance_of MusicAlbum
    end

    it 'should be an instance of music album' do
      expect(@music_album.publish_date).to eq Time.new(2022 - 0o2 - 0o2)
    end
  end
end
