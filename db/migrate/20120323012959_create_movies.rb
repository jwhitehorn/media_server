class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :genre
      t.string :description
      t.integer :itunes_id

      t.timestamps
    end
  end
end
