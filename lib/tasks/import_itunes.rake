task :import_itunes => :environment do
  i = Itunes.new
  playlist = i.find_playlists_named("Movies")
  
  playlist.tracks.each do |track|
    movie = Movie.where(:itunes_id => track.track_id).first
    movie.update_attributes(:play_count => track.played_count) if movie
    
    if not movie
      puts "Creating #{track.name}"
      year = track.year > 0 ? track.year : nil

      Movie.create :itunes_id => track.track_id, :name => track.name, 
                   :genre => track.genre, :description => track.description, 
                   :year => year, :coverart => track.coverart, :play_count => track.played_count
    end
  end
  
end