require 'rails_helper'

RSpec.describe "PlaylistSongs", type: :request do
  describe "GET /playlist_songs" do
    it "works! (now write some real specs)" do
      get playlist_songs_path
      expect(response).to have_http_status(200)
    end
  end
end
