class ItunesTrack
  attr_accessor :track_id
  attr_accessor :playlist
  
  def initialize params
    @itunes = params[:itunes] if params[:itunes]
    self.track_id = params[:track_id]
    self.playlist = params[:playlist]
  end
  
  def album
    itunes_record.album.get
  end
  
  def album=(value)
    itunes_record.album.set(value)
  end
  
  def album_artist
    itunes_record.album_artist.get
  end
  
  def album_artist=(value)
    itunes_record.album_artist.set(value)
  end
  
  def artist
    itunes_record.artist.get
  end
  
  def artist=(value)
    itunes_record.artist.set(value)
  end
  
  def coverart
    f = Tempfile.new('coverart.png')
    f.close
    File.open(f.path, "wb").tap do |file|
      file.write itunes_record.artworks.first.data_.get.data
      file.rewind
    end
  end
  
  def bit_rate
    itunes_record.bit_rate.get
  end
  
  def bookmark
    itunes_record.bookmark.get
  end
  
  def bookmark=(value)
    itunes_record.bookmark.set(value)
  end
  
  def bookmarkable?
    itunes_record.bookmarkable.get
  end
  
  def bookmarkable=(value)
    itunes_record.bookmarkable.set(value)
  end
  
  def bpm
    itunes_record.bpm.get
  end
  
  def bpm=(value)
    itunes_record.bpm.set(value)
  end
  
  def category
    itunes_record.category.get
  end
  
  def category=(value)
    itunes_record.category.set(value)
  end
  
  def comment
    itunes_record.comment.get
  end
  
  def comment=(value)
    itunes_record.comment.set(value)
  end
  
  def compilation?
    itunes_record.compilation.get
  end
  
  def compilation=(value)
    itunes_record.compilation.set(value)
  end
  
  def composer
    itunes_record.composer.get
  end
  
  def composer=(value)
    itunes_record.composer.set(value)
  end
  
  def database_id
    itunes_record.database_id.get
  end
  
  def date_added
    itunes_record.date_added.get
  end
  
  def description
    itunes_record.description.get
  end
  
  def description=(value)
    itunes_record.description.set(value)
  end
  
  def disc_count
    itunes_record.disc_count.get
  end
  
  def disc_count=(value)
    itunes_record.disc_count.set(value)
  end
  
  def disc_number
    itunes_record.disc_number.get
  end
  
  def disc_number=(value)
    itunes_record.disc_number.set(value)
  end
  
  def duration
    itunes_record.duration.get
  end
  
  def enabled?
    itunes_record.enabled.get
  end
  
  def enabled=(value)
    itunes_record.enabled.set(value)
  end
  
  def episode_id
    itunes_record.episode_id.get
  end
  
  def episode_id=(value)
    itunes_record.episode_id.set(value)
  end
  
  def episode_number
    itunes_record.episode_number.get
  end
  
  def episode_number=(value)
    itunes_record.episode_number.set(value)
  end
  
  def finish
    itunes_record.finish.get
  end
  
  def finish=(value)
    itunes_record.finish.set(value)
  end
  
  def gapless?
    itunes_record.gapless.get
  end
  
  def gapless=(value)
    itunes_record.gapless.set(value)
  end
  
  def genre
    itunes_record.genre.get
  end
  
  def genre=(value)
    itunes_record.genre.set(value)
  end
  
  def grouping
    itunes_record.grouping.get
  end
  
  def grouping=(value)
    itunes_record.grouping.set(value)
  end

  def kind
    itunes_record.kind.get
  end

  def long_description
    itunes_record.long_description.get
  end
  
  def long_description=(value)
    itunes_record.long_description.set(value)
  end
  
  def lyrics
    itunes_record.lyrics.get
  end
  
  def lyrics=(value)
    itunes_record.lyrics.set(value)
  end
  
  def modification_date
    itunes_record.modification_date.get
  end
  
  def name
    itunes_record.name.get
  end
  
  def name=(value)
    itunes_record.name.set(value)
  end
  
  def played_count
    itunes_record.played_count.get
  end
  
  def played_count=(value)
    itunes_record.played_count.set(value)
  end
  
  def podcast?
    itunes_record.podcast.get
  end
  
  def rating
    itunes_record.rating.get
  end
  
  def rating=(value)
    itunes_record.rating.set(value)
  end
  
  def sample_rate
    itunes_record.sample_rate.get
  end
  
  def season_number
    itunes_record.season_number.get
  end
  
  def season_number=(value)
    itunes_record.season_number.set(value)
  end
  
  def show
    itunes_record.show.get
  end
  
  def show=(value)
    itunes_record.show.set(value)
  end
  
  def shufflable?
    itunes_record.shufflable.get
  end
  
  def shufflable=(value)
    itunes_record.shufflable.set(value)
  end
  
  def size
    itunes_record.size.get
  end
  
  def skipped_count
    itunes_record.skipped_count.get
  end
  
  def skipped_count=(value)
    itunes_record.skipped_count.set(value)
  end
  
  def skipped_date
    itunes_record.skipped_date.get
  end
  
  def skipped_date=(value)
    itunes_record.skipped_date.set(value)
  end
  
  def start
    itunes_record.start.get
  end
  
  def start=(value)
    itunes_record.start.set(value)
  end
  
  def time
    itunes_record.time.get
  end
  
  def track_count
    itunes_record.track_count.get
  end
  
  def track_count=(value)
    itunes_record.track_count.set(value)
  end
  
  def track_number
    itunes_record.track_number.get
  end
  
  def track_number=(value)
    itunes_record.track_number.set(value)
  end
  
  #TODO: video_kind and video_kind=
  
  def volume_adjustment
    itunes_record.volume_adjustment.get
  end
  
  def volume_adjustment=(value)
    itunes_record.volume_adjustment.set(value)
  end
  
  def year
    itunes_record.year.get
  end
  
  def year=(value)
    itunes_record.year.set(value)
  end
  
  private
  def itunes_record
     @itunes.playlists.ID(playlist.playlist_id).tracks.ID(track_id)
  end
  
end