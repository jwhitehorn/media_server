task :import_itunes => :environment do
  i = Itunes.new
  playlist = i.find_playlists_named("Movies")
  
  playlist.tracks.each do |track|
    movie = Movie.where(:itunes_id => track.track_id).first
    if not movie
      puts "Creating #{track.name}"
      year = track.year > 0 ? track.year : nil

      Movie.create :itunes_id => track.track_id, :name => track.name, 
                   :genre => track.genre, :description => track.description, 
                   :year => year, :coverart => track.coverart
    end
  end
  
end