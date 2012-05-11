class ItunesPlaylist
  attr_accessor :playlist_id
  
  def initialize params
    @itunes = params[:itunes] if params[:itunes]
    self.playlist_id = params[:playlist_id]
  end
  
  def name
    itunes_record.name.get
  end
  
  def tracks
    ids = itunes_record.tracks.get.collect { |p| p.inspect.gsub(/.*?([0-9]+)[^0-9]+$/, '\1') }
    
    ids.collect { |id| ItunesTrack.new :track_id => id, :playlist => self, :itunes => @itunes }
  end
  
  private
  def itunes_record
    @itunes.playlists.ID(playlist_id)
  end
  
end