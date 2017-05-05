require "rails_helper"

RSpec.describe PlaylistSongsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/playlist_songs").to route_to("playlist_songs#index")
    end

    it "routes to #new" do
      expect(:get => "/playlist_songs/new").to route_to("playlist_songs#new")
    end

    it "routes to #show" do
      expect(:get => "/playlist_songs/1").to route_to("playlist_songs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/playlist_songs/1/edit").to route_to("playlist_songs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/playlist_songs").to route_to("playlist_songs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/playlist_songs/1").to route_to("playlist_songs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/playlist_songs/1").to route_to("playlist_songs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/playlist_songs/1").to route_to("playlist_songs#destroy", :id => "1")
    end

  end
end
