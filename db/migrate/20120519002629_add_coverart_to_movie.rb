class AddCoverartToMovie < ActiveRecord::Migration
  def self.up
    change_table :movies do |t|
      t.has_attached_file :coverart
    end
  end

  def self.down
    drop_attached_file :movies, :coverart
  end
end
