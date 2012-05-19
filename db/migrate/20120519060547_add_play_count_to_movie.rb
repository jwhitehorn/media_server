class AddPlayCountToMovie < ActiveRecord::Migration
  def change
    add_column :movies, :play_count, :integer
  end
end
