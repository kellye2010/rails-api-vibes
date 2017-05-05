class SongSerializer < ActiveModel::Serializer
  attributes :id, :artist, :title, :song_link
end
