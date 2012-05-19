class Movie < ActiveRecord::Base
  after_update :possibly_update_itunes
  
  has_attached_file :coverart, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  def update_itunes!
    i = Itunes.new
    playlist = i.find_playlists_named("Movies")
  
    playlist.tracks.each do |track|
      next unless track.track_id.to_i == itunes_id
      track.name = name
      track.description = description
      track.year = year unless year.nil?
      track.coverart = File.open(coverart.path, "r") unless coverart.nil?
    end
  end
  handle_asynchronously :update_itunes!, :queue => 'itunes'
  
  private
  def possibly_update_itunes
    update_itunes! if name_changed? or description_changed? or coverart_updated_at_changed?
  end
  
end
