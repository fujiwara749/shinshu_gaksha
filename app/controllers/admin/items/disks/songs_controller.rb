class Admin::Items::Disks::SongsController < ApplicationController
    def index
        @songs = Song.all
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.new(song_params)
        redirect_to 'admin_items_item_id_disks_disk_id_songs_path'
    end

    def destroy
        @song = Song.find(params[:id])
        @song.destroy
        redirect_to 'admin_items_item_id_disks_disk_id_songs_path'
    end
    private
    def song_params
        params.require(:song).permit(:song_number,:song_title)
    end
end
