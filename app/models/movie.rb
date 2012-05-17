class Movie < ActiveRecord::Base
  after_update :possibly_update_itunes

  def update_itunes!
    i = Itunes.new
    playlist = i.find_playlists_named("Movies")
  
    playlist.tracks.each do |track|
      next unless track.track_id.to_i == itunes_id
      track.name = name
      track.description = description
      track.year = year unless year.nil?
    end
  end
  handle_asynchronously :update_itunes!, :queue => 'itunes'
  
  private
  def possibly_update_itunes
    update_itunes! if name_changed? or description_changed?
  end
  
end
