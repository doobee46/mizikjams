class PlaylistsController < ApplicationController
  before_action :set_playlist, only: [:show, :edit, :update, :destroy]

  respond_to :html , :js , :json

  def index
    @playlists = Playlist.all
    @playlist = Playlist.new
    respond_with(@playlists)
  end

  def show
    respond_with(@playlist)
  end

  def new
    @playlist = current_user.Playlist.new
    respond_with(@playlist)
  end

  def edit
  end
   
  def create
    @playlist = Playlist.new(playlist_params)
    @playlist.save
    respond_with(@playlist)
  end
    
  def update
    @playlist.update(playlist_params)
    respond_with(@playlist)
  end

  def destroy
    @playlist.destroy
    respond_with(@playlist)
  end
    
    

  private
    def set_playlist
      @playlist = Playlist.find(params[:id])
    end

    def playlist_params
      params.require(:playlist).permit(:title)
    end
end
