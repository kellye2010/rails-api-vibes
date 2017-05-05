class Song < ApplicationRecord
  # has_one :artists
  has_many :playlists, through: :playlist_songs
end
