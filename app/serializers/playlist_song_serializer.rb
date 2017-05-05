class PlaylistSongSerializer < ActiveModel::Serializer
  attributes :id, :playlist, :song

end
