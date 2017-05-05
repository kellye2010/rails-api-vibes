class PlaylistSongsController < ApplicationController
  before_action :set_playlist_song, only: [:show, :update, :destroy]

  # GET /playlist_songs
  def index
    @playlist_songs = PlaylistSong.all

    render json: @playlist_songs
  end

  # GET /playlist_songs/1
  def show
    render json: @playlist_song
  end

  # POST /playlist_songs
  def create
    @playlist_song = PlaylistSong.new(playlist_song_params)

    if @playlist_song.save
      render json: @playlist_song, status: :created, location: @playlist_song
    else
      render json: @playlist_song.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /playlist_songs/1
  def update
    if @playlist_song.update(playlist_song_params)
      render json: @playlist_song
    else
      render json: @playlist_song.errors, status: :unprocessable_entity
    end
  end

  # DELETE /playlist_songs/1
  def destroy
    @playlist_song.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playlist_song
      @playlist_song = PlaylistSong.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def playlist_song_params
      params.require(:playlist_song).permit(:playlist, :song)
    end
end
