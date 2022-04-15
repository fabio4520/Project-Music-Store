class RenameArtistColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :artists, :name, :artist_name
  end
end
