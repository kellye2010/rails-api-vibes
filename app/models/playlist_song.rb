class PlaylistSong < ApplicationRecord
  belongs_to :playlists
  belongs_to :song
  has_one :playlist
  # has_one :song
end
