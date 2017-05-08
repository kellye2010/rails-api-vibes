class PlaylistsController < ApplicationController
  before_action :set_playlist, only: [:show, :update, :destroy]
  before_action :authenticate, only: [:show, :create, :update, :destroy]

  # GET /playlists
  def index
    @playlists = Playlist.all

    render json: @playlists
  end

  # GET /playlists/1
  def show
    @playlist = Playlist.find(params[:id])
    @playlist = current_user.playlists.build(playlist_params)
    render json: @playlist
  end

  # POST /playlists
  def create
    # @playlist = Playlist.new(playlist_params)
    @playlist = current_user.playlists.build(playlist_params)
    if @playlist.save
      render json: @playlist, status: :created, location: @playlist
    else
      render json: @playlist.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /playlists/1
  def update
    # @playlist = Playlist.find(params[:id])
    if @playlist.update(playlist_params)
      render json: @playlist
    else
      render json: @playlist.errors, status: :unprocessable_entity
    end
  end

  # DELETE /playlists/1
  def destroy
    # @playlist = Playlist.find(params[:id])
    # @playlist = current_user.playlists.build(playlist_params)
    @playlist.destroy
    head :no_content
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_playlist
      @playlist = Playlist.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def playlist_params
      params.require(:playlist).permit(:title, :user_id)
    end
end
