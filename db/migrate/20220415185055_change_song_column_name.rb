class ChangeSongColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :songs, :name, :song_name
  end
end
