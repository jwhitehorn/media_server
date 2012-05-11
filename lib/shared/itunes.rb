require 'appscript'

class Itunes
    
  def initialize
    @itunes = Appscript.app('iTunes')
    @itunes.current_track #force iTunes to launch
  end
  
  def version
    @itunes.version.get
  end
  
  def playlists
    ids = @itunes.playlists.get.collect { |p| p.inspect.gsub(/.*?[0-9]+.*?([0-9]+).*/, '\1') }
    
    ids.collect { |id| ItunesPlaylist.new :playlist_id => id, :itunes => @itunes }
  end
  
  def find_playlists_named(name)
    playlists.find { |f| f.name == name }
  end
    
end